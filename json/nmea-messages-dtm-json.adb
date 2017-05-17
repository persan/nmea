with NMEA.Messages.JSON; pragma Warnings (Off, NMEA.Messages.JSON);
with NMEA.JSON; pragma Warnings (Off, NMEA.JSON);

package body NMEA.Messages.DTM.JSON is
   use NMEA.Messages.JSON;
   use NMEA.JSON;
   

   ----------------------------------------------------
   --  DTM_Message
   ----------------------------------------------------
   procedure Populate (Val : DTM_Message; Target : in out JSON_Value) is
   begin
      Set_Field (Target, "Local_Datum_Code", Create (Val.Local_Datum_Code));
      Set_Field (Target, "Local_Datum_Subcode", Create (Val.Local_Datum_Subcode));
      Set_Field (Target, "Latitude_Offset", Create (Val.Latitude_Offset));
      Set_Field (Target, "N_Or_S", Create (Val.N_Or_S));
      Set_Field (Target, "Longitude_Offset", Create (Val.Longitude_Offset));
      Set_Field (Target, "E_Or_W", Create (Val.E_Or_W));
      Set_Field (Target, "Altitude_Offset", Create (Val.Altitude_Offset));
      Set_Field (Target, "Datum_Name", Create (Val.Datum_Name));
   end;

   ------------
   -- Create --
   ------------

   function Create (Val : DTM_Message) return JSON_Value is
   begin
      return Ret : JSON_Value := Create_Object do
         Populate (Val, Ret);
      end return;
   end Create;

   ---------
   -- Get --
   ---------

   function Get (Val : GNATCOLL.JSON.JSON_Value) return DTM_Message is
   begin
      return Ret : DTM_Message do
         Map (Val, Ret);
      end return;
   end Get;

   ---------
   -- Get --
   ---------

   function Get
     (Val   : JSON_Value;
      Field : UTF8_String)
      return DTM_Message
   is
   begin
      return Get (JSON_Value'(Get (Val, Field)));
   end Get;

   ---------------
   -- Set_Field --
   ---------------

   procedure Set_Field
     (Val        : JSON_Value;
      Field_Name : UTF8_String;
      Field      : DTM_Message)
   is      
   begin
      Set_Field (Val, Field_Name, Create (Field));
   end Set_Field;

   ---------------
   -- Map_Field --
   ---------------
   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out DTM_Message) is
   begin
      if Name = "Local_Datum_Code" then
         To.Local_Datum_Code := Get (Value);
      elsif Name = "Local_Datum_Subcode" then
         To.Local_Datum_Subcode := Get (Value);
      elsif Name = "Latitude_Offset" then
         To.Latitude_Offset := Get (Value);
      elsif Name = "N_Or_S" then
         To.N_Or_S := Get (Value);
      elsif Name = "Longitude_Offset" then
         To.Longitude_Offset := Get (Value);
      elsif Name = "E_Or_W" then
         To.E_Or_W := Get (Value);
      elsif Name = "Altitude_Offset" then
         To.Altitude_Offset := Get (Value);
      elsif Name = "Datum_Name" then
         To.Datum_Name := Get (Value);
      else  
         null;
      end if;
   end;
   
   ---------
   -- Map --
   ---------
   procedure Map
     (Val : JSON_Value;
      To  : in out DTM_Message)
   is
      procedure Process (Name : UTF8_String; Value : JSON_Value);
      procedure Process (Name : UTF8_String; Value : JSON_Value) is
      begin
         Map_Field (Name, Value, To);
      end;
   begin
      Map_JSON_Object (Val, Process'Access);
   end Map;

end NMEA.Messages.DTM.JSON;