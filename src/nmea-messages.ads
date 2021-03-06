with Ada.Tags.Generic_Dispatching_Constructor;
with Ada.Streams;
with Ada.Calendar;
with NMEA.TalkerIDs;
with Ada.Finalization;
with GNAT.Strings;
package NMEA.Messages is
--  This package provides a root for NMEA messages
   type Leading_Header_Type is new Character with Read => Read, Write => Write;
   procedure Read (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                   Data   : out Leading_Header_Type) is null;

   procedure Write (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                    Data   : in Leading_Header_Type) is null;

   type Message is abstract tagged record
      Leading_Header : Leading_Header_Type;
      Talker : NMEA.TalkerIDs.TalkerId;
   end record;

   function Input_Message
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return Message'Class;

   procedure Output_Message
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
      Item   : Message'Class);

   for Message'Class'Input use Input_Message;
   for Message'Class'Output use Output_Message;

   --  "Empty" type.  The Generic_Dispatching_Constructor expects
   --  as parameter the type of the parameter of the constructor.
   --  In this case no parameter is needed, so we define this
   --  "placeholder type"
   --  Abstract constructor to be overriden by non-abstract
   --  derived types.  It is needed by Generic_Dispatching_Constructor

   function Constructor
     (Name : not null access Ada.Streams.Root_Stream_Type'Class)
      return Message
      is abstract;


   function Image (This : Message) return String is abstract;

   type NMEA_Field is new Ada.Finalization.Controlled with  record
      Is_Valid : Boolean := False;
   end record with
     Read => Read,
     Write => Write;


   procedure Read (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                   Data   : out NMEA_Field);

   procedure Write (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                    Data   : in NMEA_Field);



   type UTC_Time_Type is new NMEA_Field with record
      Data :  Ada.Calendar.Day_Duration;
   end record with
     Read => Read,
     Write => Write;
   overriding
   procedure Read (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                   Data   : out UTC_Time_Type);

   overriding
   procedure Write (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                    Data   : in UTC_Time_Type);

   type NMEA_Long_Float is new NMEA_Field  with record
      Data : Long_Float;
   end record  with
     Read => Read,
     Write => Write;

   overriding
   procedure Read (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                   Data   : out NMEA_Long_Float);

   overriding
   procedure Write (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                    Data   : in NMEA_Long_Float);

   function Image (Item : NMEA_Long_Float; Decimals : Natural := 2) return String;

   type Nmea_Hight is new NMEA_Long_Float with null record with
     Read => Read,
     Write => Write;
   overriding
   procedure Read (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                   Data   : out Nmea_Hight);

   overriding
   procedure Write (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                    Data   : in Nmea_Hight);

   type NMEA_Integer is new NMEA_Field with record
      Data : Standard.Integer;
   end record with
     Read => Read,
     Write => Write;


   overriding
   procedure Read
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                              Data   : out NMEA_Integer);

   overriding
   procedure Write
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                               Data   : in NMEA_Integer);


   type NMEA_Day_Number is new NMEA_Integer with null record;
   type NMEA_Month_Number is new NMEA_Integer with null record;
   type NMEA_Year_Number is new NMEA_Integer with null record;
   type NMEA_Zone_Description_Hours is new NMEA_Integer with null record;
   type NMEA_Zone_Description_Minutes is new NMEA_Integer with null record;

   type NMEA_String is new NMEA_Field with record
      Value : GNAT.Strings.String_Access;
   end record with
     Read => Read,
     Write => Write;
   overriding
   procedure Read
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
      Data   : out NMEA_String);

   overriding
   procedure Write
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
      Data   : in NMEA_String);


   overriding
   procedure Finalize (Data : in out NMEA_String);

   overriding
   procedure Adjust (Data : in out NMEA_String);


   type Latitude_Type is new NMEA_Long_Float with null record with
     Read => Read,
     Write => Write;
   overriding procedure Read (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                              Data   : out Latitude_Type);

   overriding procedure Write (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                               Data   : in Latitude_Type);



   type Longitude_Type is new NMEA_Long_Float with null record with
     Read => Read,
     Write => Write;


   overriding
   procedure Read (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                   Data   : out Longitude_Type);

   overriding
   procedure Write (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                    Data   : in Longitude_Type);

   type Fix_Quality_Type is new NMEA_Long_Float  with null record;


   type Count is new NMEA_Integer with null record;

   type Waypoint_ID is new NMEA_Integer with null record;

   type Dilution is new NMEA_Long_Float with null record;

   type Meters is new NMEA_Long_Float with null record;


   type NMEA_Seconds is new NMEA_Field  with record
      Data : Duration;
   end record with
     Read => Read,
     Write => Write;

   overriding
   procedure Read (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                   Data   : out NMEA_Seconds);
   overriding
   procedure Write (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                    Data   : in NMEA_Seconds);


   type DGPS_Station_ID is new NMEA_Integer with null record;

   type NMEA_Status_Type is (OK, Invalid);
   type NMEA_Status is new NMEA_Field with record
      Data : NMEA_Status_Type;
   end record with
     Read => Read,
     Write => Write;
   overriding
   procedure Read (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                   Data   : out NMEA_Status);

   overriding
   procedure Write (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                    Data   : in NMEA_Status);


   type NMEA_Left_Right_Type is (Left, Right);
   type NMEA_Left_Right is new NMEA_Field with record
      Data : NMEA_Left_Right_Type;
   end record with
     Read => Read,
     Write => Write;
   overriding
   procedure Read (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                   Data   : out NMEA_Left_Right);

   overriding
   procedure Write (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                    Data   : in NMEA_Left_Right);


   type UTC_Date_Type is new NMEA_Field  with record
      Data : Ada.Calendar.Time;
   end record with
     Read => Read,
     Write => Write;

   overriding
   procedure Read (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                   Data   : out UTC_Date_Type);

   overriding
   procedure Write (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                    Data   : in UTC_Date_Type);

   type Nautical_Mile_Type is new NMEA_Long_Float with null record;
   type Knots_Type is new NMEA_Long_Float with null record;
   type KmH_Type is new NMEA_Long_Float with null record;
   type Heading_Type is new NMEA_Long_Float with null record;
   type Magnetic_Variation_Type is new Longitude_Type with null record;


   type  NMEA_Constant_Character (Value : Character) is new NMEA_Field with null record  with
     Read => Read,
     Write => Write;

   overriding
   procedure Read (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                   Data   : out NMEA_Constant_Character);

   overriding
   procedure Write (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                    Data   : in NMEA_Constant_Character);

   type  NMEA_Character is new NMEA_Field with record
      Value : Character;
   end record with
     Read => Read,
     Write => Write;
   overriding
   procedure Read (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                   Data   : out NMEA_Character);

   overriding
   procedure Write (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                    Data   : in NMEA_Character);

   type  NMEA_Boolean (False, True : Character) is new NMEA_Field with record
      Value : Boolean;
   end record with
     Read => Read,
     Write => Write;

   overriding
   procedure Read (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                   Data   : out NMEA_Boolean);

   overriding
   procedure Write (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                    Data   : in NMEA_Boolean);


   type  NMEA_Hex_Value is new NMEA_Field with record
      Value  : Ada.Streams.Stream_Element_Array (1 .. 4);
   end record
     with
     Read => Read,
     Write => Write;

   overriding
   procedure Read (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                   Data   : out NMEA_Hex_Value);

   overriding
   procedure Write (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                    Data   : in NMEA_Hex_Value);


   type NMEA_Waypoint_ID is new NMEA_String with null record;
   type NMEA_Dummy_Field is  new NMEA_String with  null record;
   type NMEA_Waypoint_ID_Access is access all NMEA_Waypoint_ID;

   type Waypoint_Array is array (Natural range <>) of NMEA_Waypoint_ID_Access;
   type Waypoint_Array_Access is access all Waypoint_Array;
   type NMEA_Waypoints is new NMEA_Field with record
      Value : Waypoint_Array_Access;
   end record;

   overriding
   procedure Read (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                   Data   : out NMEA_Waypoints);

   overriding
   procedure Write (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                    Data   : in NMEA_Waypoints);

   overriding
   procedure Finalize (Data : in out NMEA_Waypoints);

   overriding
   procedure Adjust (Data : in out NMEA_Waypoints);


private
   function Read (Stream : not null access Ada.Streams.Root_Stream_Type'Class) return String;
   procedure Read (Stream : not null access Ada.Streams.Root_Stream_Type'Class);
   procedure Try_Dump (Stream : not null access Ada.Streams.Root_Stream_Type'Class);
   function Construct_Message is
     new Ada.Tags.Generic_Dispatching_Constructor
       (T           => Message,
        Parameters  => Ada.Streams.Root_Stream_Type'Class,
        Constructor => Constructor);
   procedure Register (Name : String; Tag : Ada.Tags.Tag);
   function Deg_To_Float (Value : String) return Long_Float;

   function Image (Item : Long_Float; Decimals : Natural := 2) return String;
end NMEA.Messages;
