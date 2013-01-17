with Ada.Tags.Generic_Dispatching_Constructor;
with Ada.Streams;
with Ada.Calendar;

package NMEA.Messages is
   type Message is interface;

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
   type NMEA_Field is tagged record
      Is_Valid : Boolean := False;
   end record;
   procedure Read_NMEA_Field (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                                   Data   : out NMEA_Field);

   procedure Write_NMEA_Field (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                                    Data   : in NMEA_Field);
   for NMEA_Field'Read use Read_NMEA_Field;
   for NMEA_Field'Write use Write_NMEA_Field;


   type UTC_Time_Type is new NMEA_Field with record
      Data :  Ada.Calendar.Day_Duration;
   end record;
   procedure Read_UTC_Time_Type (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                   Data   : out UTC_Time_Type);

   procedure Write_UTC_Time_Type (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                    Data   : in UTC_Time_Type);
   for UTC_Time_Type'Write use Write_UTC_Time_Type;
   for UTC_Time_Type'Read use Read_UTC_Time_Type;


   type NMEA_Long_Float is new NMEA_Field  with record
      Data : Long_Float;
   end record;

   procedure Read_NMEA_Long_Float (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                                   Data   : out NMEA_Long_Float);

   procedure Write_NMEA_Long_Float (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                                    Data   : in NMEA_Long_Float);
   for NMEA_Long_Float'Read use Read_NMEA_Long_Float;
   for NMEA_Long_Float'Write use Write_NMEA_Long_Float;



   type NMEA_Integer is new NMEA_Field with record
      Data : Standard.Integer;
   end record;

   procedure Read_NMEA_Integer (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                   Data   : out NMEA_Integer);

   procedure Write_NMEA_Integer (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                    Data   : in NMEA_Integer);
   for NMEA_Integer'Read  use Read_NMEA_Integer;
   for NMEA_Integer'Write  use Write_NMEA_Integer;


   type Latitude_Type is new NMEA_Long_Float with null record;
   procedure Read_Latitude_Type (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                   Data   : out Latitude_Type);

   procedure Write_Latitude_Type (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                    Data   : in Latitude_Type);

   for Latitude_Type'Read  use Read_Latitude_Type;
   for Latitude_Type'Write use Write_Latitude_Type;



   type Longitude_Type is new NMEA_Long_Float with null record;


   procedure Read_Longitude_Type (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                   Data   : out Longitude_Type);

   procedure Write_Longitude_Type (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                    Data   : in Longitude_Type);
   for Longitude_Type'Read  use Read_Longitude_Type;
   for Longitude_Type'Write use  Write_Longitude_Type;

   type Fix_Quality_Type is new NMEA_Long_Float  with null record;


   type Count is new NMEA_Integer with null record;

   type Waypoint_ID is new NMEA_Integer with null record;

   type Dilution is new NMEA_Long_Float with null record;

   type Meters is new NMEA_Long_Float with null record;


   type NMEA_Seconds is new NMEA_Field  with record
      Data : Duration;
   end record;
   procedure Read_NMEA_Seconds (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                   Data   : out NMEA_Seconds);

   procedure Write_NMEA_Seconds (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                    Data   : in NMEA_Seconds);
   for NMEA_Seconds'Read  use Read_NMEA_Seconds;
   for NMEA_Seconds'Write use Write_NMEA_Seconds;




   type DGPS_Station_ID is new NMEA_Integer with null record;


   type NMEA_Status_Type is (OK, Invalid);
   type NMEA_Status is new NMEA_Field with record
      Data : NMEA_Status_Type;
   end record;

   type NMEA_Left_Right_Type is (Left, Right);
   type NMEA_Left_Right is new NMEA_Field with record
      Data : NMEA_Left_Right_Type;
   end record;
   procedure Read_NMEA_Left_Right (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                   Data   : out NMEA_Left_Right);

   procedure Write_NMEA_Left_Right (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                    Data   : in NMEA_Left_Right);
   for NMEA_Left_Right'Read  use Read_NMEA_Left_Right;
   for NMEA_Left_Right'Write use Write_NMEA_Left_Right;



   procedure Read_NMEA_Status (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                   Data   : out NMEA_Status);

   procedure Write_NMEA_Status (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                    Data   : in NMEA_Status);
   for NMEA_Status'Read  use Read_NMEA_Status;
   for NMEA_Status'Write use Write_NMEA_Status;

   type UTC_Date_Type is new NMEA_Field  with record
      Data : Ada.Calendar.Time;
   end record;

   procedure Read_UTC_Date_Type (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                   Data   : out UTC_Date_Type);

   procedure Write_UTC_Date_Type (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                    Data   : in UTC_Date_Type);
   for UTC_Date_Type'Read  use Read_UTC_Date_Type;
   for UTC_Date_Type'Write use Write_UTC_Date_Type;


   type Nautical_Mile_Type is new NMEA_Long_Float with null record;
   type Knots_Type is new NMEA_Long_Float with null record;
   type Heading_Type is new NMEA_Long_Float with null record;
   type Magnetic_Variation_Type is new Longitude_Type with null record;

   function Read (Stream : not null access Ada.Streams.Root_Stream_Type'Class) return String;
   function Read (Stream : not null access Ada.Streams.Root_Stream_Type'Class) return Long_Float;
   function Read (Stream : not null access Ada.Streams.Root_Stream_Type'Class) return Integer;

private
   procedure Try_Dump (Stream : not null access Ada.Streams.Root_Stream_Type'Class);
   function Construct_Message is
     new Ada.Tags.Generic_Dispatching_Constructor
       (T           => Message,
        Parameters  => Ada.Streams.Root_Stream_Type'Class,
        Constructor => Constructor);
   procedure Register (Name : String; Tag : Ada.Tags.Tag);
end NMEA.Messages;
