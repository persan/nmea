--  TPC - Trawl Position Cartesian Coordinates
--          1 2 3 4  5  6 7
--          | | | |  |  | |
--   $--TPC,x,M,y,P,z.z,M*hh,<CR><LF>
--  Field Number:
--  1. Horizontal distance from the vessel center line 
--  2. Meters 
--  3. Horizontal distance from the transducer to the trawl along the vessel center line. The value is normally positive assuming the trawl is located behind the vessel. 
--  4. Meters 
--  5. Depth of the trawl below the surface 
--  6. Meters 
--  7. Checksum 
--  From [GLOBALSAT]. Shown with a "@II" leader rather than "$GP". This entry actually merges their TPC description with another entry labeled (apparently incorrectly) TPT, which differs from the TPT shown below.

package NMEA.Messages.TPC is
   type TPC_Message is new Message with record
     null;
   end record;

   overriding function Image (This : TPC_Message) return String;

private
   overriding
   function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return TPC_Message;
end NMEA.Messages.TPC;
