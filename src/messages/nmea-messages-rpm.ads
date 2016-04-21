--  RPM - Revolutions
--          1 2 3   4   5 6
--          | | |   |   | |
--   $--RPM,a,x,x.x,x.x,A*hh<CR><LF>
--  Field Number:
--  1. Sourse, S = Shaft, E = Engine 
--  2. Engine or shaft number 
--  3. Speed, Revolutions per minute 
--  4. Propeller pitch, % of maximum, "-" means astern 
--  5. Status, A means data is valid 
--  6. Checksum 

package NMEA.Messages.RPM is
   type RPM_Message is new Message with record
     null;
   end record;

   overriding function Image (This : RPM_Message) return String;

private
   overriding
   function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return RPM_Message;
end NMEA.Messages.RPM;
