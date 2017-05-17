--  ROT - Rate Of Turn
--          1   2 3
--          |   | |
--   $--ROT,x.x,A*hh<CR><LF>
--  Field Number:
--  1. Rate Of Turn, degrees per minute, "-" means bow turns to port 
--  2. Status, A means data is valid 
--  3. Checksum 

package NMEA.Messages.ROT is
   type ROT_Message is new Message with record
      Rate_Of_Turn_degrees_per_minute_means_bow_turns_to_port : NMEA_Dummy_Field;
      Status_A_means_data_is_valid : NMEA_Dummy_Field;
   end record;

   overriding function Image (This : ROT_Message) return String;

private
   overriding
   function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return ROT_Message;
end NMEA.Messages.ROT;
