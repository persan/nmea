with GNATCOLL.JSON;

package NMEA.TalkerIDs.JSON is
   use GNATCOLL.JSON;

   ----------------------------------------------------
   --  TalkerId
   ---------------------------------------------------
   
   function Create (Val : TalkerId) return JSON_Value;
   
   procedure Populate (Val : TalkerId; Target : in out JSON_Value);

   function Get (Val : GNATCOLL.JSON.JSON_Value) return TalkerId;
   
   function Get (Val   : JSON_Value;
                 Field : UTF8_String) return TalkerId;
   
   procedure Set_Field  (Val        : JSON_Value;
                         Field_Name : UTF8_String;
                         Field      : TalkerId);
   
   procedure Map (Val : JSON_Value;
                  To  : in out TalkerId);   

   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out TalkerId);

end NMEA.TalkerIDs.JSON;