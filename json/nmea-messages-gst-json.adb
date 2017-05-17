with NMEA.Messages.JSON; pragma Warnings (Off, NMEA.Messages.JSON);
with NMEA.JSON; pragma Warnings (Off, NMEA.JSON);

package body NMEA.Messages.GST.JSON is
   use NMEA.Messages.JSON;
   use NMEA.JSON;
   

   ----------------------------------------------------
   --  GST_Message
   ----------------------------------------------------
   procedure Populate (Val : GST_Message; Target : in out JSON_Value) is
   begin
      Set_Field (Target, "TC_Time_Of_Associated_GGA_Fix", Create (Val.TC_Time_Of_Associated_GGA_Fix));
      Set_Field (Target, "Total_RMS_Standard_Deviation", Create (Val.Total_RMS_Standard_Deviation));
      Set_Field (Target, "Standard_Deviation_Of_Semi_Major_Axis_Of_Error_Ellipse", Create (Val.Standard_Deviation_Of_Semi_Major_Axis_Of_Error_Ellipse));
      Set_Field (Target, "Standard_Deviation_Of_Semi_Minor_Axis_Of_Error_Ellipse", Create (Val.Standard_Deviation_Of_Semi_Minor_Axis_Of_Error_Ellipse));
      Set_Field (Target, "Orientation_Of_Semi_Major_Axis_Of_Error_Ellipse", Create (Val.Orientation_Of_Semi_Major_Axis_Of_Error_Ellipse));
      Set_Field (Target, "Standard_Deviation_Of_Latitude_Error", Create (Val.Standard_Deviation_Of_Latitude_Error));
      Set_Field (Target, "Standard_Deviation_Of_Longitude_Error", Create (Val.Standard_Deviation_Of_Longitude_Error));
      Set_Field (Target, "Standard_Deviation_Of_Altitude_Error", Create (Val.Standard_Deviation_Of_Altitude_Error));
   end;

   ------------
   -- Create --
   ------------

   function Create (Val : GST_Message) return JSON_Value is
   begin
      return Ret : JSON_Value := Create_Object do
         Populate (Val, Ret);
      end return;
   end Create;

   ---------
   -- Get --
   ---------

   function Get (Val : GNATCOLL.JSON.JSON_Value) return GST_Message is
   begin
      return Ret : GST_Message do
         Map (Val, Ret);
      end return;
   end Get;

   ---------
   -- Get --
   ---------

   function Get
     (Val   : JSON_Value;
      Field : UTF8_String)
      return GST_Message
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
      Field      : GST_Message)
   is      
   begin
      Set_Field (Val, Field_Name, Create (Field));
   end Set_Field;

   ---------------
   -- Map_Field --
   ---------------
   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out GST_Message) is
   begin
      if Name = "TC_Time_Of_Associated_GGA_Fix" then
         To.TC_Time_Of_Associated_GGA_Fix := Get (Value);
      elsif Name = "Total_RMS_Standard_Deviation" then
         To.Total_RMS_Standard_Deviation := Get (Value);
      elsif Name = "Standard_Deviation_Of_Semi_Major_Axis_Of_Error_Ellipse" then
         To.Standard_Deviation_Of_Semi_Major_Axis_Of_Error_Ellipse := Get (Value);
      elsif Name = "Standard_Deviation_Of_Semi_Minor_Axis_Of_Error_Ellipse" then
         To.Standard_Deviation_Of_Semi_Minor_Axis_Of_Error_Ellipse := Get (Value);
      elsif Name = "Orientation_Of_Semi_Major_Axis_Of_Error_Ellipse" then
         To.Orientation_Of_Semi_Major_Axis_Of_Error_Ellipse := Get (Value);
      elsif Name = "Standard_Deviation_Of_Latitude_Error" then
         To.Standard_Deviation_Of_Latitude_Error := Get (Value);
      elsif Name = "Standard_Deviation_Of_Longitude_Error" then
         To.Standard_Deviation_Of_Longitude_Error := Get (Value);
      elsif Name = "Standard_Deviation_Of_Altitude_Error" then
         To.Standard_Deviation_Of_Altitude_Error := Get (Value);
      else  
         null;
      end if;
   end;
   
   ---------
   -- Map --
   ---------
   procedure Map
     (Val : JSON_Value;
      To  : in out GST_Message)
   is
      procedure Process (Name : UTF8_String; Value : JSON_Value);
      procedure Process (Name : UTF8_String; Value : JSON_Value) is
      begin
         Map_Field (Name, Value, To);
      end;
   begin
      Map_JSON_Object (Val, Process'Access);
   end Map;

end NMEA.Messages.GST.JSON;