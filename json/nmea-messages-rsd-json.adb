with NMEA.Messages.JSON; pragma Warnings (Off, NMEA.Messages.JSON);
with NMEA.JSON; pragma Warnings (Off, NMEA.JSON);

package body NMEA.Messages.RSD.JSON is
   use NMEA.Messages.JSON;
   use NMEA.JSON;
   

   ----------------------------------------------------
   --  RSD_Message
   ----------------------------------------------------
   procedure Populate (Val : RSD_Message; Target : in out JSON_Value) is
   begin
      Set_Field (Target, "Unknown", Create (Val.Unknown));
      Set_Field (Target, "Unknown8", Create (Val.Unknown8));
      Set_Field (Target, "Unknown9", Create (Val.Unknown9));
      Set_Field (Target, "Unknown10", Create (Val.Unknown10));
      Set_Field (Target, "Unknown11", Create (Val.Unknown11));
      Set_Field (Target, "Unknown12", Create (Val.Unknown12));
      Set_Field (Target, "Unknown13", Create (Val.Unknown13));
      Set_Field (Target, "Unknown14", Create (Val.Unknown14));
      Set_Field (Target, "Cursor_Range_From_Own_Ship", Create (Val.Cursor_Range_From_Own_Ship));
      Set_Field (Target, "Cursor_Bearing_Degrees_Clockwise_From_Zero", Create (Val.Cursor_Bearing_Degrees_Clockwise_From_Zero));
      Set_Field (Target, "Range_Scale", Create (Val.Range_Scale));
      Set_Field (Target, "Range_Units", Create (Val.Range_Units));
      Set_Field (Target, "Unknown19", Create (Val.Unknown19));
   end;

   ------------
   -- Create --
   ------------

   function Create (Val : RSD_Message) return JSON_Value is
   begin
      return Ret : JSON_Value := Create_Object do
         Populate (Val, Ret);
      end return;
   end Create;

   ---------
   -- Get --
   ---------

   function Get (Val : GNATCOLL.JSON.JSON_Value) return RSD_Message is
   begin
      return Ret : RSD_Message do
         Map (Val, Ret);
      end return;
   end Get;

   ---------
   -- Get --
   ---------

   function Get
     (Val   : JSON_Value;
      Field : UTF8_String)
      return RSD_Message
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
      Field      : RSD_Message)
   is      
   begin
      Set_Field (Val, Field_Name, Create (Field));
   end Set_Field;

   ---------------
   -- Map_Field --
   ---------------
   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out RSD_Message) is
   begin
      if Name = "Unknown" then
         To.Unknown := Get (Value);
      elsif Name = "Unknown8" then
         To.Unknown8 := Get (Value);
      elsif Name = "Unknown9" then
         To.Unknown9 := Get (Value);
      elsif Name = "Unknown10" then
         To.Unknown10 := Get (Value);
      elsif Name = "Unknown11" then
         To.Unknown11 := Get (Value);
      elsif Name = "Unknown12" then
         To.Unknown12 := Get (Value);
      elsif Name = "Unknown13" then
         To.Unknown13 := Get (Value);
      elsif Name = "Unknown14" then
         To.Unknown14 := Get (Value);
      elsif Name = "Cursor_Range_From_Own_Ship" then
         To.Cursor_Range_From_Own_Ship := Get (Value);
      elsif Name = "Cursor_Bearing_Degrees_Clockwise_From_Zero" then
         To.Cursor_Bearing_Degrees_Clockwise_From_Zero := Get (Value);
      elsif Name = "Range_Scale" then
         To.Range_Scale := Get (Value);
      elsif Name = "Range_Units" then
         To.Range_Units := Get (Value);
      elsif Name = "Unknown19" then
         To.Unknown19 := Get (Value);
      else  
         null;
      end if;
   end;
   
   ---------
   -- Map --
   ---------
   procedure Map
     (Val : JSON_Value;
      To  : in out RSD_Message)
   is
      procedure Process (Name : UTF8_String; Value : JSON_Value);
      procedure Process (Name : UTF8_String; Value : JSON_Value) is
      begin
         Map_Field (Name, Value, To);
      end;
   begin
      Map_JSON_Object (Val, Process'Access);
   end Map;

end NMEA.Messages.RSD.JSON;