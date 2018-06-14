with NMEA.Messages.JSON; pragma Warnings (Off, NMEA.Messages.JSON);
with NMEA.JSON; pragma Warnings (Off, NMEA.JSON);

package body NMEA.Messages.ALM.JSON is
   use NMEA.Messages.JSON;
   use NMEA.JSON;


   ----------------------------------------------------
   --  ALM_Message
   ----------------------------------------------------
   procedure Populate (Val : ALM_Message; Target : in out JSON_Value) is
   begin
      Set_Field (Target, "Total_Number_Of_Messages", Create (Val.Total_Number_Of_Messages));
      Set_Field (Target, "Message_Number", Create (Val.Message_Number));
      Set_Field (Target, "Satellite_PRN_Number", Create (Val.Satellite_PRN_Number));
      Set_Field (Target, "GPS_Week_Number", Create (Val.GPS_Week_Number));
      Set_Field (Target, "SV_Health", Create (Val.SV_Health));
      Set_Field (Target, "Eccentricity", Create (Val.Eccentricity));
      Set_Field (Target, "Almanac_Reference_Time", Create (Val.Almanac_Reference_Time));
      Set_Field (Target, "Inclination_Angle", Create (Val.Inclination_Angle));
      Set_Field (Target, "Rate_Of_Right_Ascension", Create (Val.Rate_Of_Right_Ascension));
      Set_Field (Target, "Root_Of_Semi_Major_Axis", Create (Val.Root_Of_Semi_Major_Axis));
      Set_Field (Target, "Argument_Of_Perigee", Create (Val.Argument_Of_Perigee));
      Set_Field (Target, "Longitude_Of_Ascension_Node", Create (Val.Longitude_Of_Ascension_Node));
      Set_Field (Target, "Mean_Anomaly", Create (Val.Mean_Anomaly));
      Set_Field (Target, "F0_Clock_Parameter", Create (Val.F0_Clock_Parameter));
      Set_Field (Target, "F1_Clock_Parameter", Create (Val.F1_Clock_Parameter));
   end;

   ------------
   -- Create --
   ------------

   function Create (Val : ALM_Message) return JSON_Value is
   begin
      return Ret : JSON_Value := Create_Object do
         Populate (Val, Ret);
      end return;
   end Create;

   ---------
   -- Get --
   ---------

   function Get (Val : GNATCOLL.JSON.JSON_Value) return ALM_Message is
   begin
      return Ret : ALM_Message do
         Map (Val, Ret);
      end return;
   end Get;

   ---------
   -- Get --
   ---------

   function Get
     (Val   : JSON_Value;
      Field : UTF8_String)
      return ALM_Message
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
      Field      : ALM_Message)
   is
   begin
      Set_Field (Val, Field_Name, Create (Field));
   end Set_Field;

   ---------------
   -- Map_Field --
   ---------------
   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out ALM_Message) is
   begin
      if Name = "Total_Number_Of_Messages" then
         To.Total_Number_Of_Messages := Get (Value);
      elsif Name = "Message_Number" then
         To.Message_Number := Get (Value);
      elsif Name = "Satellite_PRN_Number" then
         To.Satellite_PRN_Number := Get (Value);
      elsif Name = "GPS_Week_Number" then
         To.GPS_Week_Number := Get (Value);
      elsif Name = "SV_Health" then
         To.SV_Health := Get (Value);
      elsif Name = "Eccentricity" then
         To.Eccentricity := Get (Value);
      elsif Name = "Almanac_Reference_Time" then
         To.Almanac_Reference_Time := Get (Value);
      elsif Name = "Inclination_Angle" then
         To.Inclination_Angle := Get (Value);
      elsif Name = "Rate_Of_Right_Ascension" then
         To.Rate_Of_Right_Ascension := Get (Value);
      elsif Name = "Root_Of_Semi_Major_Axis" then
         To.Root_Of_Semi_Major_Axis := Get (Value);
      elsif Name = "Argument_Of_Perigee" then
         To.Argument_Of_Perigee := Get (Value);
      elsif Name = "Longitude_Of_Ascension_Node" then
         To.Longitude_Of_Ascension_Node := Get (Value);
      elsif Name = "Mean_Anomaly" then
         To.Mean_Anomaly := Get (Value);
      elsif Name = "F0_Clock_Parameter" then
         To.F0_Clock_Parameter := Get (Value);
      elsif Name = "F1_Clock_Parameter" then
         To.F1_Clock_Parameter := Get (Value);
      else
         Map_Field (Name, Value, Message (To));
      end if;
   end;

   ---------
   -- Map --
   ---------
   procedure Map
     (Val : JSON_Value;
      To  : in out ALM_Message)
   is
      procedure Process (Name : UTF8_String; Value : JSON_Value);
      procedure Process (Name : UTF8_String; Value : JSON_Value) is
      begin
         Map_Field (Name, Value, To);
      end;
   begin
      Map_JSON_Object (Val, Process'Access);
   end Map;

end NMEA.Messages.ALM.JSON;
