with NMEA.Messages.JSON; pragma Warnings (Off, NMEA.Messages.JSON);
with NMEA.JSON; pragma Warnings (Off, NMEA.JSON);

package body NMEA.Messages.VLW.JSON is
   use NMEA.Messages.JSON;
   use NMEA.JSON;
   

   ----------------------------------------------------
   --  VLW_Message
   ----------------------------------------------------
   procedure Populate (Val : VLW_Message; Target : in out JSON_Value) is
   begin
      Set_Field (Target, "Total_Cumulative_Distance", Create (Val.Total_Cumulative_Distance));
      Set_Field (Target, "N_Nautical_Miles", Create (Val.N_Nautical_Miles));
      Set_Field (Target, "Distance_Since_Reset", Create (Val.Distance_Since_Reset));
      Set_Field (Target, "N_Nautical_Miles8", Create (Val.N_Nautical_Miles8));
   end;

   ------------
   -- Create --
   ------------

   function Create (Val : VLW_Message) return JSON_Value is
   begin
      return Ret : JSON_Value := Create_Object do
         Populate (Val, Ret);
      end return;
   end Create;

   ---------
   -- Get --
   ---------

   function Get (Val : GNATCOLL.JSON.JSON_Value) return VLW_Message is
   begin
      return Ret : VLW_Message do
         Map (Val, Ret);
      end return;
   end Get;

   ---------
   -- Get --
   ---------

   function Get
     (Val   : JSON_Value;
      Field : UTF8_String)
      return VLW_Message
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
      Field      : VLW_Message)
   is      
   begin
      Set_Field (Val, Field_Name, Create (Field));
   end Set_Field;

   ---------------
   -- Map_Field --
   ---------------
   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out VLW_Message) is
   begin
      if Name = "Total_Cumulative_Distance" then
         To.Total_Cumulative_Distance := Get (Value);
      elsif Name = "N_Nautical_Miles" then
         To.N_Nautical_Miles := Get (Value);
      elsif Name = "Distance_Since_Reset" then
         To.Distance_Since_Reset := Get (Value);
      elsif Name = "N_Nautical_Miles8" then
         To.N_Nautical_Miles8 := Get (Value);
      else  
         null;
      end if;
   end;
   
   ---------
   -- Map --
   ---------
   procedure Map
     (Val : JSON_Value;
      To  : in out VLW_Message)
   is
      procedure Process (Name : UTF8_String; Value : JSON_Value);
      procedure Process (Name : UTF8_String; Value : JSON_Value) is
      begin
         Map_Field (Name, Value, To);
      end;
   begin
      Map_JSON_Object (Val, Process'Access);
   end Map;

end NMEA.Messages.VLW.JSON;