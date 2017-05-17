--  STN - Multiple Data ID
--  This sentence is transmitted before each individual sentence where there is a need for the Listener to determine the exact source of data in the system. Examples might include dual-frequency depthsounding equipment or equipment that integrates data from a number of sources and produces a single output.
--          1   2
--          |   |
--   $--STN,x.x,*hh<CR><LF>
--  Field Number:
--  1. Talker ID Number 
--  2. Checksum 

package NMEA.Messages.STN is
   type STN_Message is new Message with record
      Talker_ID_Number : NMEA_Dummy_Field;
   end record;

   overriding function Image (This : STN_Message) return String;

private
   overriding
   function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return STN_Message;
end NMEA.Messages.STN;
