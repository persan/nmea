with Ada.Streams;
with Ada.Calendar;
package NMEA.Links is

   type Nmea_Frame is tagged limited private;
   type Nmea_Stream (Parent : not null access Nmea_Frame) is
     new Ada.Streams.Root_Stream_Type with private;

   procedure Read
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
      Data   : out Nmea_Frame);
   for Nmea_Frame'Read use Read;

   procedure Write
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
      Data   : in Nmea_Frame);
   for Nmea_Frame'Write use Write;

   function Stream
     (Data : in Nmea_Frame)
      return not null access Ada.Streams.Root_Stream_Type'Class;

   function  Image (Self : in Nmea_Frame) return String;

   procedure Dump  (Self : in Nmea_Stream);
   procedure Dump  (Self : in Nmea_Frame);

   NMEA_Checksum_Error : exception;

private
   procedure Check_Checksum (Self : Nmea_Frame);
   function Check_Checksum (Self : Nmea_Frame) return Boolean;
   procedure Generate_Checksum (Self : in out Nmea_Frame);
   use type Ada.Streams.Stream_Element_Offset;

   MAX_LENGHT : constant := 128;
   type Nmea_Stream (Parent : not null access Nmea_Frame) is
     new Ada.Streams.Root_Stream_Type with record
      In_Cursor : Ada.Streams.Stream_Element_Offset;
      Length    : Ada.Streams.Stream_Element_Offset;
   end record;
   overriding procedure Read
     (Stream : in out Nmea_Stream;
      Item   : out Ada.Streams.Stream_Element_Array;
      Last   : out Ada.Streams.Stream_Element_Offset);

   overriding procedure Write
     (Stream : in out Nmea_Stream;
      Item   : Ada.Streams.Stream_Element_Array);


   type Nmea_Frame is tagged limited record
      Time     : Ada.Calendar.Time;
      Data     : Ada.Streams.Stream_Element_Array (1 .. 1 + MAX_LENGHT - 1);
      Cursor   : Ada.Streams.Stream_Element_Offset;
      N_Stream : aliased Nmea_Stream (Nmea_Frame'Access);
   end record;
   function Image (Self : in Ada.Calendar.Time) return String;
   function Image (Self : in Ada.Streams.Stream_Element_Array) return String;

end NMEA.Links;
