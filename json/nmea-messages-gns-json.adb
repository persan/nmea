with NMEA.Messages.JSON; pragma Warnings (Off, NMEA.Messages.JSON);
with NMEA.JSON; pragma Warnings (Off, NMEA.JSON);

package body NMEA.Messages.GNS.JSON is
   use NMEA.Messages.JSON;
   use NMEA.JSON;


   ----------------------------------------------------
   --  GNS_Message
   ----------------------------------------------------
   procedure Populate (Val : GNS_Message; Target : in out JSON_Value) is
   begin
      Set_Field (Target, "UTC", Create (Val.UTC));
      Set_Field (Target, "Latitude", Create (Val.Latitude));
      Set_Field (Target, "N_Or_S_North_Or_South", Create (Val.N_Or_S_North_Or_South));
      Set_Field (Target, "Longitude", Create (Val.Longitude));
      Set_Field (Target, "E_Or_W_East_Or_West", Create (Val.E_Or_W_East_Or_West));
      Set_Field (Target, "Mode_Indicator", Create (Val.Mode_Indicator));
      Set_Field (Target, "Total_Number_Of_Satelites_In_Use", Create (Val.Total_Number_Of_Satelites_In_Use));
      Set_Field (Target, "HDROP", Create (Val.HDROP));
      Set_Field (Target, "Antenna_Altitude", Create (Val.Antenna_Altitude));
      Set_Field (Target, "Goeidal_Separation", Create (Val.Goeidal_Separation));
      Set_Field (Target, "Age_Of_Diferential_Data", Create (Val.Age_Of_Diferential_Data));
      Set_Field (Target, "Differential_Reference_Station_ID", Create (Val.Differential_Reference_Station_ID));
   end;

   ------------
   -- Create --
   ------------

   function Create (Val : GNS_Message) return JSON_Value is
   begin
      return Ret : JSON_Value := Create_Object do
         Populate (Val, Ret);
      end return;
   end Create;

   ---------
   -- Get --
   ---------

   function Get (Val : GNATCOLL.JSON.JSON_Value) return GNS_Message is
   begin
      return Ret : GNS_Message do
         Map (Val, Ret);
      end return;
   end Get;

   ---------
   -- Get --
   ---------

   function Get
     (Val   : JSON_Value;
      Field : UTF8_String)
      return GNS_Message
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
      Field      : GNS_Message)
   is
   begin
      Set_Field (Val, Field_Name, Create (Field));
   end Set_Field;

   ---------------
   -- Map_Field --
   ---------------
   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out GNS_Message) is
   begin
      if Name = "UTC" then
         To.UTC := Get (Value);
      elsif Name = "Latitude" then
         To.Latitude := Get (Value);
      elsif Name = "N_Or_S_North_Or_South" then
         To.N_Or_S_North_Or_South := Get (Value);
      elsif Name = "Longitude" then
         To.Longitude := Get (Value);
      elsif Name = "E_Or_W_East_Or_West" then
         To.E_Or_W_East_Or_West := Get (Value);
      elsif Name = "Mode_Indicator" then
         To.Mode_Indicator := Get (Value);
      elsif Name = "Total_Number_Of_Satelites_In_Use" then
         To.Total_Number_Of_Satelites_In_Use := Get (Value);
      elsif Name = "HDROP" then
         To.HDROP := Get (Value);
      elsif Name = "Antenna_Altitude" then
         To.Antenna_Altitude := Get (Value);
      elsif Name = "Goeidal_Separation" then
         To.Goeidal_Separation := Get (Value);
      elsif Name = "Age_Of_Diferential_Data" then
         To.Age_Of_Diferential_Data := Get (Value);
      elsif Name = "Differential_Reference_Station_ID" then
         To.Differential_Reference_Station_ID := Get (Value);
      else
         Map_Field (Name, Value, Message (To));
      end if;
   end;

   ---------
   -- Map --
   ---------
   procedure Map
     (Val : JSON_Value;
      To  : in out GNS_Message)
   is
      procedure Process (Name : UTF8_String; Value : JSON_Value);
      procedure Process (Name : UTF8_String; Value : JSON_Value) is
      begin
         Map_Field (Name, Value, To);
      end;
   begin
      Map_JSON_Object (Val, Process'Access);
   end Map;

end NMEA.Messages.GNS.JSON;
