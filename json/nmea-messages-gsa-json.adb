with NMEA.Messages.JSON; pragma Warnings (Off, NMEA.Messages.JSON);
with NMEA.JSON; pragma Warnings (Off, NMEA.JSON);

package body NMEA.Messages.GSA.JSON is
   use NMEA.Messages.JSON;
   use NMEA.JSON;
   

   ----------------------------------------------------
   --  GSA_Message
   ----------------------------------------------------
   procedure Populate (Val : GSA_Message; Target : in out JSON_Value) is
   begin
      Set_Field (Target, "Selection_Mode", Create (Val.Selection_Mode));
      Set_Field (Target, "Mode", Create (Val.Mode));
      Set_Field (Target, "ID_Of_1st_Satellite_Used_For_Fix", Create (Val.ID_Of_1st_Satellite_Used_For_Fix));
      Set_Field (Target, "ID_Of_2nd_Satellite_Used_For_Fix", Create (Val.ID_Of_2nd_Satellite_Used_For_Fix));
      Set_Field (Target, "ID_Of_3rd_Satellite_Used_For_Fix", Create (Val.ID_Of_3rd_Satellite_Used_For_Fix));
      Set_Field (Target, "ID_Of_4th_Satellite_Used_For_Fix", Create (Val.ID_Of_4th_Satellite_Used_For_Fix));
      Set_Field (Target, "ID_Of_5th_Satellite_Used_For_Fix", Create (Val.ID_Of_5th_Satellite_Used_For_Fix));
      Set_Field (Target, "ID_Of_6th_Satellite_Used_For_Fix", Create (Val.ID_Of_6th_Satellite_Used_For_Fix));
      Set_Field (Target, "ID_Of_7th_Satellite_Used_For_Fix", Create (Val.ID_Of_7th_Satellite_Used_For_Fix));
      Set_Field (Target, "ID_Of_8th_Satellite_Used_For_Fix", Create (Val.ID_Of_8th_Satellite_Used_For_Fix));
      Set_Field (Target, "ID_Of_9th_Satellite_Used_For_Fix", Create (Val.ID_Of_9th_Satellite_Used_For_Fix));
      Set_Field (Target, "ID_Of_10th_Satellite_Used_For_Fix", Create (Val.ID_Of_10th_Satellite_Used_For_Fix));
      Set_Field (Target, "ID_Of_11th_Satellite_Used_For_Fix", Create (Val.ID_Of_11th_Satellite_Used_For_Fix));
      Set_Field (Target, "ID_Of_12th_Satellite_Used_For_Fix", Create (Val.ID_Of_12th_Satellite_Used_For_Fix));
      Set_Field (Target, "PDOP", Create (Val.PDOP));
      Set_Field (Target, "HDOP", Create (Val.HDOP));
      Set_Field (Target, "VDOP", Create (Val.VDOP));
   end;

   ------------
   -- Create --
   ------------

   function Create (Val : GSA_Message) return JSON_Value is
   begin
      return Ret : JSON_Value := Create_Object do
         Populate (Val, Ret);
      end return;
   end Create;

   ---------
   -- Get --
   ---------

   function Get (Val : GNATCOLL.JSON.JSON_Value) return GSA_Message is
   begin
      return Ret : GSA_Message do
         Map (Val, Ret);
      end return;
   end Get;

   ---------
   -- Get --
   ---------

   function Get
     (Val   : JSON_Value;
      Field : UTF8_String)
      return GSA_Message
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
      Field      : GSA_Message)
   is      
   begin
      Set_Field (Val, Field_Name, Create (Field));
   end Set_Field;

   ---------------
   -- Map_Field --
   ---------------
   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out GSA_Message) is
   begin
      if Name = "Selection_Mode" then
         To.Selection_Mode := Get (Value);
      elsif Name = "Mode" then
         To.Mode := Get (Value);
      elsif Name = "ID_Of_1st_Satellite_Used_For_Fix" then
         To.ID_Of_1st_Satellite_Used_For_Fix := Get (Value);
      elsif Name = "ID_Of_2nd_Satellite_Used_For_Fix" then
         To.ID_Of_2nd_Satellite_Used_For_Fix := Get (Value);
      elsif Name = "ID_Of_3rd_Satellite_Used_For_Fix" then
         To.ID_Of_3rd_Satellite_Used_For_Fix := Get (Value);
      elsif Name = "ID_Of_4th_Satellite_Used_For_Fix" then
         To.ID_Of_4th_Satellite_Used_For_Fix := Get (Value);
      elsif Name = "ID_Of_5th_Satellite_Used_For_Fix" then
         To.ID_Of_5th_Satellite_Used_For_Fix := Get (Value);
      elsif Name = "ID_Of_6th_Satellite_Used_For_Fix" then
         To.ID_Of_6th_Satellite_Used_For_Fix := Get (Value);
      elsif Name = "ID_Of_7th_Satellite_Used_For_Fix" then
         To.ID_Of_7th_Satellite_Used_For_Fix := Get (Value);
      elsif Name = "ID_Of_8th_Satellite_Used_For_Fix" then
         To.ID_Of_8th_Satellite_Used_For_Fix := Get (Value);
      elsif Name = "ID_Of_9th_Satellite_Used_For_Fix" then
         To.ID_Of_9th_Satellite_Used_For_Fix := Get (Value);
      elsif Name = "ID_Of_10th_Satellite_Used_For_Fix" then
         To.ID_Of_10th_Satellite_Used_For_Fix := Get (Value);
      elsif Name = "ID_Of_11th_Satellite_Used_For_Fix" then
         To.ID_Of_11th_Satellite_Used_For_Fix := Get (Value);
      elsif Name = "ID_Of_12th_Satellite_Used_For_Fix" then
         To.ID_Of_12th_Satellite_Used_For_Fix := Get (Value);
      elsif Name = "PDOP" then
         To.PDOP := Get (Value);
      elsif Name = "HDOP" then
         To.HDOP := Get (Value);
      elsif Name = "VDOP" then
         To.VDOP := Get (Value);
      else  
         null;
      end if;
   end;
   
   ---------
   -- Map --
   ---------
   procedure Map
     (Val : JSON_Value;
      To  : in out GSA_Message)
   is
      procedure Process (Name : UTF8_String; Value : JSON_Value);
      procedure Process (Name : UTF8_String; Value : JSON_Value) is
      begin
         Map_Field (Name, Value, To);
      end;
   begin
      Map_JSON_Object (Val, Process'Access);
   end Map;

end NMEA.Messages.GSA.JSON;