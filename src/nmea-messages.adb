with Ada.Containers.Indefinite_Ordered_Maps;
with Ada.Containers.Indefinite_Hashed_Maps;
with Ada.Unchecked_Conversion;
with Ada.Strings.Hash;
with Ada.Tags;
with System;
with NMEA.Links;
with Ada.Exceptions; use Ada.Exceptions;
package body NMEA.Messages is
   use Ada.Tags;
   function "<" (L, R : Ada.Tags.Tag) return Boolean;

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
      Character'Read (Stream, Name (Cursor));
      for I in 1 .. 5 loop
         Character'Read (Stream, Name (Cursor));
         Cursor := Cursor + 1;
      end loop;
      if not Tag_Map.Contains (Name) then
         raise Constraint_Error with Name  & " Not registerd!";
      end if;
      Character'Read (Stream, Dummy);
      return Result : Message'Class := Construct_Message (Tag_Map.Element (Name), Stream) do
         null;
      end return;
   exception when others =>
         Try_Dump (Stream);
         raise;
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



   function Read (Stream : not null access Ada.Streams.Root_Stream_Type'Class) return Long_Float is
   begin
      return Long_Float'Value (Read (Stream));
   end;
   function Read (Stream : not null access Ada.Streams.Root_Stream_Type'Class) return Integer is
   begin
      return Integer'Value (Read (Stream));
   end;


   procedure Read_UTC_Time_Type (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                                 Data   : out UTC_Time_Type) is
      HH : String (1 .. 2);
      MM : String (1 .. 2);
      SS : String (1 .. 2);
   begin
      String'Read (Stream, HH);
      if HH (1) = ',' then
         HH (1) := HH (2);
         Character'Read (Stream, HH (2));
      end if;
      String'Read (Stream, MM);
      String'Read (Stream, SS);
      Data.Data := Integer'Value (HH) * (24.0) * (60.0) +
        Integer'Value (MM) * (60.0) +
        Integer'Value (SS) * (1.0);
      Data.Is_Valid := True;
   end;

   procedure Write_UTC_Time_Type (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                                  Data   : in UTC_Time_Type) is
     HH : Integer;
     MM : Integer;
     SS : Integer;
   begin
      NMEA_Field'Write (Stream, NMEA_Field (Data));
      String'Write (Stream, "hhmmss");
   end;


   procedure Read_NMEA_Status (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                               Data   : out NMEA_Status) is
      Buffer : constant String := Read (Stream);
   begin
      case Buffer (1) is
         when 'A' => Data.Data := OK;
         when 'V' => Data.Data := Invalid;
         when others =>
            raise Constraint_Error with "NMEA Status out of bounds '" & Buffer &  "'.";
      end case;
      Data.Is_Valid := True;
   end;

   procedure Write_NMEA_Status (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                                Data   : in NMEA_Status) is
   begin
       NMEA_Field'Write (Stream, NMEA_Field (Data));
     case Data.Data is
         when OK =>      String'Write (Stream, "A");
         when Invalid => String'Write (Stream, "V");
      end case;
   end;


   procedure Read_NMEA_Left_Right (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                               Data   : out NMEA_Left_Right) is
      Buffer : constant String := Read (Stream);
   begin
      case Buffer (1) is
         when 'L' => Data.Data := Left;
         when 'R' => Data.Data := Right;
         when others =>
            raise Constraint_Error with "NMEA Left/Right out of bounds '" & Buffer &  "'.";
      end case;
      Data.Is_Valid := True;
   end;

   procedure Write_NMEA_Left_Right (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                                Data   : in NMEA_Left_Right) is
   begin
       NMEA_Field'Write (Stream, NMEA_Field (Data));
     case Data.Data is
         when Left  => String'Write (Stream, "L");
         when Right => String'Write (Stream, "R");
      end case;
   end;




   function Read (Stream : not null access Ada.Streams.Root_Stream_Type'Class) return String is
      Ret    : String (1 .. 64);
      Cursor : Natural := Ret'First;
   begin
      loop
         Character'Read (Stream, Ret (Cursor));
         exit when Ret (Cursor) not in ',' | '*';
      end loop;
      Cursor := Cursor + 1;
      loop
         Character'Read (Stream, Ret (Cursor));
         exit when Ret (Cursor) in  ',' | '*';
         Cursor := Cursor + 1;
      end loop;
      return Ret (1 .. Cursor - 1);
   end;

   procedure Read_NMEA_Long_Float (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                                   Data   : out NMEA_Long_Float) is
      Buffer : constant String := Read (Stream);
   begin
      Data.Data :=  Long_Float'Value (Buffer);
   exception
      when others =>
         pragma Debug (Try_Dump (Stream));
         raise Constraint_Error with "No Float value '" & Buffer &  "'.";
   end;

   procedure Write_NMEA_Long_Float (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                                    Data   : in NMEA_Long_Float) is
   begin
      NMEA_Field'Write (Stream, NMEA_Field (Data));
      null;
   end;

   procedure Read_NMEA_Integer (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                                Data   : out NMEA_Integer) is
      Buffer : constant String := Read (Stream);
   begin
      Data.Data :=  Integer'Value (Buffer);
   exception
      when E : others =>
         pragma Debug (Try_Dump (Stream));
         Raise_Exception (Exception_Identity (E), "No Integer '" & Buffer & "'");
   end;
   procedure Write_NMEA_Integer (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
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

   procedure Read_Latitude_Type (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                                 Data   : out Latitude_Type) is
      Val        : constant Long_Float := Read (Stream);
      Hemisphere : constant String := Read (Stream);
   begin
      case Hemisphere (Hemisphere'First) is
         when 'N' => Data.Data := Val * 1.0;
         when 'S' => Data.Data := Val * (-1.0);
         when others =>
            raise Constraint_Error with "Data out of bounds'" & Hemisphere & "'";
      end case;

   end;

   procedure Write_Latitude_Type (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                                  Data   : in Latitude_Type) is
   begin
      NMEA_Field'Write (Stream, NMEA_Field (Data));
      null;
   end;


   procedure Read_Longitude_Type (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                                  Data   : out Longitude_Type) is
      Val        : constant String := Read (Stream);
      Hemisphere : constant String := Read (Stream);
   begin
      Data.Data := Deg_To_Float (Val);
      case Hemisphere (Hemisphere'First) is
         when 'E' => Data.Data := Data.Data * 1.0;
         when 'W' => Data.Data := Data.Data * (-1.0);
         when others =>
            raise Constraint_Error with "Data out of bounds'" & Hemisphere & "'";
      end case;

   end;

   procedure Write_Longitude_Type (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                                   Data   : in Longitude_Type) is
   begin
      NMEA_Field'Write (Stream, NMEA_Field (Data));
      null;
   end;



   procedure Read_NMEA_Seconds (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                                Data   : out NMEA_Seconds) is
   begin
      Data.Data := Duration (Long_Float'(Read (Stream)));
   end;

   procedure Write_NMEA_Seconds (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                                 Data   : in NMEA_Seconds) is
   begin
      NMEA_Field'Write (Stream, NMEA_Field (Data));
      null;
   end;


   procedure Read_UTC_Date_Type (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                                 Data   : out UTC_Date_Type) is
      Buffer : String (1 .. 6);
   begin
      String'Read (Stream, Buffer);
      Data.Data := Ada.Calendar.Time_Of (Integer'Value (Buffer (1 .. 2)) + 1900,
                                         Integer'Value (Buffer (3 .. 4)),
                                         Integer'Value (Buffer (5 .. 6)));
      Data.Is_Valid := True;
   exception
      when E : others =>
         pragma Debug (Try_Dump (Stream));
         Raise_Exception (Exception_Identity (E), "No Date '" & Buffer & "'");

   end;

   procedure Write_UTC_Date_Type (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                                  Data   : in UTC_Date_Type) is
   begin
      NMEA_Field'Write (Stream, NMEA_Field (Data));
      null;
   end;
   procedure Read_NMEA_Field (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                              Data   : out NMEA_Field) is
      pragma Unreferenced (Stream);
   begin
      Data.Is_Valid := True;
   end;

   procedure Write_NMEA_Field (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                               Data   : in NMEA_Field)  is
   begin
      Character'Output (Stream, ',');
   end;

end NMEA.Messages;
