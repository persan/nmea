--  GBS - GPS Satellite Fault Detection
--              1      2   3   4   5   6   7   8   9
--              |      |   |   |   |   |   |   |   |
--   $--GBS,hhmmss.ss,x.x,x.x,x.x,x.x,x.x,x.x,x.x*hh<CR><LF>
--  Field Number:
--  1. UTC time of the GGA or GNS fix associated with this sentence 
--  2. Expected error in latitude (meters) 
--  3. Expected error in longitude (meters) 
--  4. Expected error in altitude (meters) 
--  5. PRN of most likely failed satellite 
--  6. Probability of missed detection for most likely failed satellite 
--  7. Estimate of bias in meters on most likely failed satellite 
--  8. Standard deviation of bias estimate 
--  9. Checksum 
--  Note: Source [MX521] describes a proprietary extension of GBS with a 9th data field. The 8-field version is in NMEA 3.0.

package NMEA.Messages.GBS is
   type GBS_Message is new Message with record
     null;
   end record;

   overriding function Image (This : GBS_Message) return String;

private
   overriding
   function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return GBS_Message;
end NMEA.Messages.GBS;
