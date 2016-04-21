--  DBT - Depth below transducer
--          1   2 3   4 5   6 7
--          |   | |   | |   | |
--   $--DBT,x.x,f,x.x,M,x.x,F*hh<CR><LF>
--  Field Number:
--  1. Depth, feet 
--  2. f = feet 
--  3. Depth, meters 
--  4. M = meters 
--  5. Depth, Fathoms 
--  6. F = Fathoms 
--  7. Checksum 
--  In real-world sensors, sometimes not all three conversions are reported. So you night see something like $SDDBT,,f,22.5,M,,F*cs

package NMEA.Messages.DBT is
   type DBT_Message is new Message with record
     null;
   end record;

   overriding function Image (This : DBT_Message) return String;

private
   overriding
   function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return DBT_Message;
end NMEA.Messages.DBT;
