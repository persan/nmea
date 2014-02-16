with Ada.Containers.Indefinite_Ordered_Maps;
with Ada.Containers.Indefinite_Hashed_Maps;
with Ada.Unchecked_Conversion;
with Ada.Strings.Hash;
with Ada.Tags;
with System;
with NMEA.Links;
with GNAT.Calendar.Time_IO;
with Ada.Strings.Fixed;
with Ada.Strings.Maps; use Ada.Strings.Maps;
with Ada.Text_IO; use Ada.Text_IO;
package body NMEA.Messages is
   use Ada.Tags;
   use  Ada.Strings.Fixed;
   function "<" (L, R : Ada.Tags.Tag) return Boolean;
   Witespace_Set           : constant Character_Set := To_Set (' ' & ASCII.HT & ASCII.VT & ASCII.LF & ASCII.CR);

   package Tag_Maps is new Ada.Containers.Indefinite_Hashed_Maps (String, Ada.Tags.Tag, Ada.Strings.Hash, "=");
   package Name_Maps is new Ada.Containers.Indefinite_Ordered_Maps (Ada.Tags.Tag, String, "<", "=");

   --  Delimiter : constant Character := ',';

   -------------------
   -- Input_Message --
   -------------------
   Tag_Map  : Tag_Maps.Map;
   Name_Map : Name_Maps.Map;
   procedure Try_Dump (Stream : not null access Ada.Streams.Root_Stream_Type'Class) is
   begin
      if Stream.all'Tag = NMEA.Links.Nmea_Stream'Tag then
         NMEA.Links.Dump (NMEA.Links.Nmea_Stream (Stream.all));
      end if;
   end;

   function "<" (L, R : Ada.Tags.Tag) return Boolean is
      function Convert is new Ada.Unchecked_Conversion (Ada.Tags.Tag, System.Address);
      use System;
   begin
      return Convert (L) < Convert (R);
   end;

   function Input_Message
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return Message'Class
   is
      Name   : String (1 .. 5);
      Cursor : Natural := Name'First;
      Dummy  : Character;
   begin
      Character'Read (Stream, Name (Cursor)); -- skip leading $
      for I in 1 .. 5 loop
         Character'Read (Stream, Name (Cursor));
         Cursor := Cursor + 1;
      end loop;
      if not Tag_Map.Contains (Name) then
         raise Constraint_Error with Name  & " Not registerd!";
      end if;
      Character'Read (Stream, Dummy); -- skip first ,
      return Result : Message'Class := Construct_Message (Tag_Map.Element (Name), Stream) do
         null;
      end return;
   end Input_Message;

   --------------------
   -- Output_Message --
   --------------------

   procedure Output_Message
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
      Item   : Message'Class)
   is
   begin
      Character'Write (Stream, '$');
      String'Write (Stream, Name_Map.Element (Item'Tag));
      Message'Write (Stream, Item);
      String'Write (Stream, ASCII.CR & ASCII.LF);
   end Output_Message;

   --------------
   -- register --
   --------------

   procedure Register (Name : String; Tag : Ada.Tags.Tag) is
   begin
      Tag_Map.Include (Name, Tag);
      Name_Map.Include (Tag, Name);
   end Register;





   overriding procedure Read (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                   Data   : out UTC_Time_Type) is
      Buffer : constant String := Read (Stream);
   begin
      if Buffer'Length = 6 then
         Data.Data := Integer'Value (Buffer (Buffer'First + 0 .. Buffer'First + 1)) * (24.0) * (60.0) +
           Integer'Value (Buffer (Buffer'First + 2 .. Buffer'First + 3)) * (60.0) +
           Integer'Value (Buffer (Buffer'First + 4 .. Buffer'First + 5)) * (1.0);
         Data.Is_Valid := True;
      end if;
   end;

   overriding procedure Write (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                    Data   : in UTC_Time_Type) is
      use GNAT.Calendar.Time_IO;
      T : Ada.Calendar.Time;
   begin
      T := Ada.Calendar.Time_Of (2000, 01, 01, Data.Data);
      NMEA_Field'Write (Stream, NMEA_Field (Data));
      String'Write (Stream, Image (T, "%H%M%S"));
   end;


   overriding procedure Read (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                               Data   : out NMEA_Status) is
      Buffer : constant String := Read (Stream);
   begin
      if Buffer'Length > 0 then
         case Buffer (1) is
         when 'A' => Data.Data := OK;
         when 'V' => Data.Data := Invalid;
         when others =>
            raise Constraint_Error with "NMEA Status out of bounds '" & Buffer &  "'.";
         end case;
         Data.Is_Valid := True;
      end if;
   end;

   overriding procedure Write (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                                Data   : in NMEA_Status) is
   begin
      NMEA_Field'Write (Stream, NMEA_Field (Data));
      case Data.Data is
         when OK =>      String'Write (Stream, "A");
         when Invalid => String'Write (Stream, "V");
      end case;
   end;


   overriding procedure Read (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                                   Data   : out NMEA_Left_Right) is
      Buffer : constant String := Read (Stream);
   begin
      if Buffer'Length > 0 then
         case Buffer (1) is
         when 'L' => Data.Data := Left;
         when 'R' => Data.Data := Right;
         when others =>
            raise Constraint_Error with "NMEA Left/Right out of bounds '" & Buffer &  "'.";
         end case;
         Data.Is_Valid := True;
      end if;
   end;

   overriding procedure Write (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                                    Data   : in NMEA_Left_Right) is
   begin
      NMEA_Field'Write (Stream, NMEA_Field (Data));
      if Data.Is_Valid then
         case Data.Data is
         when Left  => String'Write (Stream, "L");
         when Right => String'Write (Stream, "R");
         end case;
      end if;
   end;




   procedure Read (Stream : not null access Ada.Streams.Root_Stream_Type'Class)  is
      Dummy : constant String := Read (Stream);
      pragma Unreferenced (Dummy);
   begin
      null;
   end;

   function Read (Stream : not null access Ada.Streams.Root_Stream_Type'Class) return String is
      Ret    : String (1 .. 64);
      Cursor : Natural := Ret'First;
   begin
      loop
         Character'Read (Stream, Ret (Cursor));
         Put (Ret (Cursor));
         exit when Ret (Cursor) in  ',' | '*';
         Cursor := Cursor + 1;
      end loop;
      Put_Line ("--> '" & Ret (1 .. Cursor - 1) & "'");
      return Ret (1 .. Cursor - 1);
   end;

   overriding procedure Read (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                                   Data   : out NMEA_Long_Float) is
      Buffer : constant String := Read (Stream);
   begin
      if Buffer'Length /= 0 then
         Data.Data :=  Long_Float'Value (Buffer);
      else
         Data.Is_Valid := False;
      end if;
   exception
      when others =>
         pragma Debug (Try_Dump (Stream));
         raise Constraint_Error with "No Float value '" & Buffer &  "'.";
   end;

   overriding procedure Write (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                                    Data   : in NMEA_Long_Float) is
   begin
      NMEA_Field'Write (Stream, NMEA_Field (Data));
   end;

   overriding procedure Read (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                                Data   : out NMEA_Integer) is
      Buffer : constant String := Read (Stream);
   begin
      if Buffer'Length > 0 then
         Data.Data :=  Integer'Value (Buffer);
         Data.Is_Valid := True;
      end if;
   end;
   overriding procedure Write (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                                 Data   : in NMEA_Integer) is
   begin
      NMEA_Field'Write (Stream, NMEA_Field (Data));
      null;
   end;


   function Deg_To_Float (Value : String) return Long_Float;
   function Deg_To_Float (Value : String) return Long_Float is
      Temp : Long_Float;
   begin
      return  Ret : Long_Float do
         Temp := Long_Float'Value (Value); -- Deg
         Ret := Long_Float'Truncation (Temp);
      end return;
   end;

   overriding procedure Read (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                   Data   : out Latitude_Type) is
   begin
      NMEA_Long_Float'Read (Stream, NMEA_Long_Float (Data));
      declare
         Hemisphere : constant String := Read (Stream);
      begin
         if Hemisphere'Length > 0 then
            if Hemisphere (Hemisphere'First) = 'N' then
               Data.Data := Data.Data * 1.0;
               Data.Is_Valid := True;
            elsif Hemisphere (Hemisphere'First) = 'S' then
               Data.Data := Data.Data * (-1.0);
               Data.Is_Valid := True;
            end if;
         end if;
      end;
   end;

   overriding procedure Write (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                    Data   : in Latitude_Type) is
   begin
      NMEA_Field'Write (Stream, NMEA_Field (Data));
   end;


   overriding procedure Read (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                                  Data   : out Longitude_Type) is
      Val        : constant String := Read (Stream);
      Hemisphere : constant String := Read (Stream);
   begin
      if Val'Length > 0  and then Hemisphere'Length > 0 then
         Data.Data := Deg_To_Float (Val);
         case Hemisphere (Hemisphere'First) is
         when 'E' => Data.Data := Data.Data * 1.0;
         when 'W' => Data.Data := Data.Data * (-1.0);
         when others =>
            raise Constraint_Error with "Data out of bounds'" & Hemisphere & "'";
         end case;
         Data.Is_Valid := True;
      end if;
   end;

   overriding procedure Write (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                                   Data   : in Longitude_Type) is
   begin
      NMEA_Field'Write (Stream, NMEA_Field (Data));
   end;



   overriding procedure Read (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                                Data   : out NMEA_Seconds) is
      Val : constant String := Read (Stream);
   begin
      if Val'Length > 0 then
         Data.Data := Duration'Value (Val);
         Data.Is_Valid := True;
      else
         Data.Is_Valid := False;
      end if;
   end;

   overriding procedure Write (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                                 Data   : in NMEA_Seconds) is
   begin
      NMEA_Field'Write (Stream, NMEA_Field (Data));
      if Data.Is_Valid then
         String'Write (Stream, Trim (Data.Data'Img, Witespace_Set, Witespace_Set));
      end if;
   end;


   overriding procedure Read (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                                 Data   : out UTC_Date_Type) is
      Buffer : constant String := Read (Stream);
   begin
      if Buffer'Length = 6 then
         Data.Data := Ada.Calendar.Time_Of (Integer'Value (Buffer (1 .. 2)) + 1900,
                                            Integer'Value (Buffer (3 .. 4)),
                                            Integer'Value (Buffer (5 .. 6)));
         Data.Is_Valid := True;
      end if;
   end;

   overriding procedure Write (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                                  Data   : in UTC_Date_Type) is
   begin
      NMEA_Field'Write (Stream, NMEA_Field (Data));
      if Data.Is_Valid then
         String'Write (Stream, GNAT.Calendar.Time_IO.Image (Data.Data, "%y%m%d"));
      end if;
   end;
   procedure Read (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                   Data   : out NMEA_Field) is
      pragma Unreferenced (Stream);
   begin
      Data.Is_Valid := True;
   end;

   procedure Write (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                    Data   : in NMEA_Field)  is
      pragma Unreferenced (Data);
   begin
      Character'Output (Stream, ',');
   end;

   overriding procedure Read (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                              Data   : out Nmea_Hight) is
   begin
      NMEA_Long_Float'Read (Stream, NMEA_Long_Float (Data));
      Read (Stream);
   end;

   overriding procedure Write (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                               Data   : in Nmea_Hight) is
   begin
      if Data.Is_Valid then
         NMEA_Long_Float'Write (Stream, NMEA_Long_Float (Data));
         String'Write (Stream, ",M");
      else
         String'Write (Stream, ",,");
      end if;
   end;
   overriding procedure Read (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                              Data   : out NMEA_String) is
      Buffer : constant String := Read (Stream);
   begin
      if Buffer'Length > 0 then
         Ada.Strings.Fixed.Move (Buffer, Data.Data);
         Data.Length := Buffer'Length;
      end if;
   end;

   overriding procedure Write (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                               Data   : in NMEA_String) is
   begin
      NMEA_Field'Write (Stream, NMEA_Field (Data));
      if Data.Is_Valid then
         String'Write (Stream, Data.Data (Data.Data'First .. Data.Length));
      end if;
   end;

end NMEA.Messages;
