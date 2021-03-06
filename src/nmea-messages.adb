with Ada.Containers.Indefinite_Hashed_Maps;
with Ada.Containers.Indefinite_Ordered_Maps;
--  with Ada.Integer_Text_IO;
with Ada.Long_Float_Text_IO;
with Ada.Strings.Fixed;
with Ada.Strings.Hash;
with Ada.Strings.Maps; use Ada.Strings.Maps;
with Ada.Tags;
with Ada.Unchecked_Conversion;

with GNAT.Calendar.Time_IO;
with NMEA.Links;

with System;

package body NMEA.Messages is
   use Ada.Tags;
   use Ada.Strings.Fixed;
   use GNAT.Strings;
   function "<" (L, R : Ada.Tags.Tag) return Boolean;

   Witespace_Set : constant Character_Set := To_Set (' ' & ASCII.HT & ASCII.VT & ASCII.LF & ASCII.CR);

   package Tag_Maps  is new Ada.Containers.Indefinite_Hashed_Maps (String, Ada.Tags.Tag, Ada.Strings.Hash, "=");
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
      TalkerId : NMEA.TalkerIDs.TalkerId;
      Name     : String (1 .. 3);
      Dummy    : Character;
      Leading_Header : Character;
   begin
      Character'Read (Stream, Leading_Header); -- skip leading $
      String'Read (Stream, String (TalkerId));
      String'Read (Stream, Name);

      if not Tag_Map.Contains (Name) then
         raise Constraint_Error with Name  & " Not registerd!";
      end if;
      Character'Read (Stream, Dummy); -- skip first ,
      return Result :  Message'Class := Construct_Message (Tag_Map.Element (Name), Stream) do
         Result.Talker := TalkerId;
         Result.Leading_Header := Leading_Header_Type (Leading_Header);
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
      Character'Write (Stream, Character(Item.Leading_Header));
      String'Write (Stream, String (Item.Talker));
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


   procedure Read (Stream : not null access Ada.Streams.Root_Stream_Type'Class)  is
      Dummy : constant String := Read (Stream);
      pragma Unreferenced (Dummy);
   begin
      null;
   end;

   function Read (Stream : not null access Ada.Streams.Root_Stream_Type'Class) return String is
      Ret    : String (1 .. 255);
      Cursor : Natural := Ret'First;
   begin
      loop
         Character'Read (Stream, Ret (Cursor));
         exit when Ret (Cursor) in  ',' | '*';
         Cursor := Cursor + 1;
      end loop;
      return Ret (1 .. Cursor - 1);
   end;

   function Deg_To_Float (Value : String) return Long_Float is
      Temp : Long_Float;
   begin
      return  Ret : Long_Float do
         Temp := Long_Float'Value (Value); -- Deg
         --  Ret := Long_Float'Truncation (Temp);
         Ret := Temp;
      end return;
   end;

   --  =======================================================================
   --
   --   The fields
   --
   --  =======================================================================


   --  ###############
   --  #  NMEA_Field
   --  ###############
   procedure Read (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                   Data   : out NMEA_Field) is
      pragma Unreferenced (Stream);
   begin
      Data.Is_Valid := False;
   end;

   procedure Write (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                    Data   : in NMEA_Field)  is
      pragma Unreferenced (Data);
   begin
      Character'Output (Stream, ',');
   end;

   --  ##############
   --  #  UTC_Time_Type
   --  ##############
   overriding
   procedure Read (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                   Data   : out UTC_Time_Type) is
      Buffer : constant String := Read (Stream);
   begin
      Data.Is_Valid := False;
      if Buffer'Length = 6 then
         Data.Data := Integer'Value (Buffer (Buffer'First + 0 .. Buffer'First + 1)) * (60.0) * (60.0) +
           Integer'Value (Buffer (Buffer'First + 2 .. Buffer'First + 3)) * (60.0) +
           Integer'Value (Buffer (Buffer'First + 4 .. Buffer'First + 5)) * (1.0);
         Data.Is_Valid := True;
      end if;
   end;

   overriding
   procedure Write (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                    Data   : in UTC_Time_Type) is
      use GNAT.Calendar.Time_IO;
      T : Ada.Calendar.Time;
   begin
      NMEA_Field'Write (Stream, NMEA_Field (Data));
      if Data.Is_Valid then
         T := Ada.Calendar.Time_Of (2000, 01, 01, Data.Data);
         String'Write (Stream, Image (T, "%H%M%S"));
      end if;
   end;


   --  ##############
   --  #  NMEA_Status
   --  ##############
   overriding
   procedure Read (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                   Data   : out NMEA_Status) is
      Buffer : constant String := Read (Stream);
   begin
      Data.Is_Valid := False;
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

   overriding
   procedure Write (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                    Data   : in NMEA_Status) is
   begin
      NMEA_Field'Write (Stream, NMEA_Field (Data));
      case Data.Data is
         when OK =>      String'Write (Stream, "A");
         when Invalid => String'Write (Stream, "V");
      end case;
   end;


   --  ###############
   --  #  NMEA_Left_Right
   --  ###############
   overriding
   procedure Read (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                   Data   : out NMEA_Left_Right) is
      Buffer : constant String := Read (Stream);
   begin
      Data.Is_Valid := False;
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

   overriding
   procedure Write (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                    Data   : in NMEA_Left_Right) is
   begin
      NMEA_Field'Write (Stream, NMEA_Field (Data));
      if Data.Is_Valid then
         String'Write (Stream,
                       (case Data.Data is
                           when Left  => "L,",
                           when Right => "R,"));
      end if;
   end;



   --  ###############
   --  #  NMEA_Long_Float
   --  ###############

   overriding
   procedure Read (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                   Data   : out NMEA_Long_Float) is
      Buffer : constant String := Read (Stream);
   begin
      Data.Is_Valid := False;
      if Buffer'Length /= 0 then
         Data.Data :=  Long_Float'Value (Buffer);
         Data.Is_Valid := True;
      end if;
   exception
      when others =>
         pragma Debug (Try_Dump (Stream));
         raise Constraint_Error with "No Float value '" & Buffer &  "'.";
   end;

   overriding
   procedure Write (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                    Data   : in NMEA_Long_Float) is
   begin
      NMEA_Field'Write (Stream, NMEA_Field (Data));
      if Data.Is_Valid then
         String'Write (Stream, Image (Data, 2));
      end if;
   end;

   function Image (Item : Long_Float; Decimals : Natural := 2) return String is
      Buffer : String (1 .. 40) := (others => ' ');
   begin
      Ada.Long_Float_Text_IO.Put (Buffer, Item, Exp => 0, Aft => Decimals);
      return Trim (Buffer, Witespace_Set, Witespace_Set);
   end;

   function Image (Item : NMEA_Long_Float; Decimals : Natural := 2) return String is
   begin
      return  Image (Item.Data, Decimals);
   end;

   --  ###############
   --  #  NMEA_Integer
   --  ###############
   overriding
   procedure Read (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                   Data   : out NMEA_Integer) is
      Buffer : constant String := Read (Stream);
   begin
      Data.Is_Valid := False;
      if Buffer'Length > 0 then
         Data.Data :=  Integer'Value (Buffer);
         Data.Is_Valid := True;
      end if;
   end;
   overriding
   procedure Write (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                    Data   : in NMEA_Integer) is
   begin
      NMEA_Field'Write (Stream, NMEA_Field (Data));
      if Data.Is_Valid then
         String'Write (Stream, Trim (Data.Data'Img, Witespace_Set, Witespace_Set));
      end if;
   end;

   --  ###############
   --  #  Latitude_Type
   --  ###############
   overriding procedure Read (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                              Data   : out Latitude_Type) is
   begin
      Data.Is_Valid := False;
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
      if Data.Is_Valid then
         String'Write (Stream, Trim (Image (abs (Data.Data), 4), Witespace_Set, Witespace_Set) &
                         "," & (if Data.Data > 0.0 then "N" else "S"));

      end if;
   end;


   --  ###############
   --  #  Longitude_Type
   --  ###############
   overriding procedure Read (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                              Data   : out Longitude_Type) is
      Val        : constant String := Read (Stream);
      Hemisphere : constant String := Read (Stream);
   begin
      Data.Is_Valid := False;
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

   overriding
   procedure Write (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                    Data   : in Longitude_Type) is
   begin
      NMEA_Field'Write (Stream, NMEA_Field (Data));
      if Data.Is_Valid then
         String'Write (Stream, Trim (Image (abs (Data.Data), 4), Witespace_Set, Witespace_Set) &
                         "," & (if Data.Data > 0.0 then "E" else "W"));

      end if;
   end;



   --  ###############
   --  #  NMEA_Seconds
   --  ###############
   overriding
   procedure Read (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                   Data   : out NMEA_Seconds) is
      Val : constant String := Read (Stream);
   begin
      Data.Is_Valid := False;
      if Val'Length > 0 then
         Data.Data := Duration'Value (Val);
         Data.Is_Valid := True;
      end if;
   end;

   overriding
   procedure Write (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                    Data   : in NMEA_Seconds) is
   begin
      NMEA_Field'Write (Stream, NMEA_Field (Data));
      if Data.Is_Valid then
         String'Write (Stream, Trim (Data.Data'Img, Witespace_Set, Witespace_Set));
      end if;
   end;


   --  ###############
   --  #  UTC_Date_Type
   --  ###############
   overriding
   procedure Read (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                   Data   : out UTC_Date_Type) is
      Buffer : constant String := Read (Stream);
   begin
      Data.Is_Valid := False;
      if Buffer'Length = 6 then
         Data.Data := Ada.Calendar.Time_Of (Integer'Value (Buffer (1 .. 2)) + 1900,
                                            Integer'Value (Buffer (3 .. 4)),
                                            Integer'Value (Buffer (5 .. 6)));
         Data.Is_Valid := True;
      end if;
   end;

   overriding
   procedure Write (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                    Data   : in UTC_Date_Type) is
   begin
      NMEA_Field'Write (Stream, NMEA_Field (Data));
      if Data.Is_Valid then
         String'Write (Stream, GNAT.Calendar.Time_IO.Image (Data.Data, "%y%m%d"));
      end if;
   end;


   --  ###############
   --  #  Nmea_Hight
   --  ###############
   overriding
   procedure Read (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                   Data   : out Nmea_Hight) is
   begin
      Data.Is_Valid := False;
      NMEA_Long_Float'Read (Stream, NMEA_Long_Float (Data));
      Read (Stream);
   end;

   overriding
   procedure Write (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                    Data   : in Nmea_Hight) is
   begin
      if Data.Is_Valid then
         NMEA_Long_Float'Write (Stream, NMEA_Long_Float (Data));
         String'Write (Stream, ",M");
      else
         String'Write (Stream, ",,");
      end if;
   end;

   --  ###############
   --  #  NMEA_String
   --  ###############
   overriding
   procedure Read (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                   Data   : out NMEA_String) is
      Buffer : constant String := Read (Stream);
   begin
      Data.Is_Valid := False;
      if Buffer'Length > 0 then
         Data.Value := new String'(Buffer);
         Data.Is_Valid := True;
      end if;
   end;

   overriding
   procedure Write (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                    Data   : in NMEA_String) is
   begin
      NMEA_Field'Write (Stream, NMEA_Field (Data));
      if Data.Is_Valid then
         String'Write (Stream, Data.Value.all);
      end if;
   end;

   overriding
   procedure Finalize (Data : in out NMEA_String) is
   begin
      GNAT.Strings.Free (Data.Value);
   end;

   overriding
   procedure Adjust (Data : in out NMEA_String) is
   begin
      Data.Value := (if Data.Value = null
                     then
                        null
                     else
                        new String'(Data.Value.all));
   end;


   --  ##########################
   --  #  NMEA_Constant_Character
   --  ##########################
   overriding
   procedure Read (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                   Data   : out NMEA_Constant_Character) is
      Buffer : constant String := Read (Stream);
   begin
      Data.Is_Valid := Buffer (Buffer'First) = Data.Value;
   end;

   overriding
   procedure Write (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                    Data   : in NMEA_Constant_Character) is
   begin
      NMEA_Field'Write (Stream, NMEA_Field (Data));
      Character'Write (Stream, Data.Value);
   end;

   --  ##########################
   --  #  NMEA_Character
   --  ##########################
   overriding
   procedure Read (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                   Data   : out NMEA_Character) is
      Buffer : constant String := Read (Stream);
   begin

      Data.Value := (if Buffer'Length > 0 then Buffer (Buffer'First) else ' ');
      Data.Is_Valid := Buffer'Length > 0;
   end;

   overriding
   procedure Write (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                    Data   : in NMEA_Character) is
   begin
      NMEA_Field'Write (Stream, NMEA_Field (Data));
      Character'Write (Stream, Data.Value);
   end;


   --  ##########################
   --  #  NMEA_Boolean
   --  ##########################

   overriding
   procedure Read (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                   Data   : out NMEA_Boolean) is
      Buffer : constant String := Read (Stream);
   begin
      Data.Is_Valid := Buffer (Buffer'First) = Data.True or else Buffer (Buffer'First) = Data.False;
      Data.Value := Buffer (Buffer'First) = Data.True;
   end;

   overriding
   procedure Write (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                    Data   : in NMEA_Boolean) is
   begin
      NMEA_Field'Write (Stream, NMEA_Field (Data));
      Character'Write (Stream, (if Data.Value then Data.True else Data.False));
   end;


   --  ##########################
   --  #  NMEA_Hex_Value
   --  ##########################
   overriding
   procedure Read (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                   Data   : out NMEA_Hex_Value) is
      Buffer : constant String := Read (Stream) with Warnings => Off;

   begin
      pragma Compile_Time_Warning (True, "TODO Fix Read NMEA_Hex_Value");
      Data.Is_Valid := False;
   end;

   overriding
   procedure Write (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                    Data   : in NMEA_Hex_Value) is

   begin
      NMEA_Field'Write (Stream, NMEA_Field (Data));
      --  Write (Stream, NMEA_Integer  (Data));
      pragma Compile_Time_Warning (True, "TODO Fix Write NMEA_Hex_Value");
   end;


   --  ##########################
   --  #  NMEA_Waypoints
   --  ##########################

   overriding
   procedure Read (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                   Data   : out NMEA_Waypoints) is
   begin
      null;
   end;

   overriding
   procedure Write (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                    Data   : in NMEA_Waypoints) is
   begin
      null;
   end;

   overriding
   procedure Finalize (Data : in out NMEA_Waypoints) is
   begin
      null;
   end;

   overriding
   procedure Adjust (Data : in out NMEA_Waypoints) is
   begin
      null;
   end;


end NMEA.Messages;
