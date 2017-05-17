with NMEA.Messages.JSON; pragma Warnings (Off, NMEA.Messages.JSON);
with NMEA.JSON; pragma Warnings (Off, NMEA.JSON);

package body NMEA.Messages.WNC.JSON is
   use NMEA.Messages.JSON;
   use NMEA.JSON;
   

   ----------------------------------------------------
   --  WNC_Message
   ----------------------------------------------------
   procedure Populate (Val : WNC_Message; Target : in out JSON_Value) is
   begin
      Set_Field (Target, "Distance_Nautical_Miles", Create (Val.Distance_Nautical_Miles));
      Set_Field (Target, "N_Nautical_Miles", Create (Val.N_Nautical_Miles));
      Set_Field (Target, "Distance_Kilometers", Create (Val.Distance_Kilometers));
      Set_Field (Target, "K_Kilometers", Create (Val.K_Kilometers));
      Set_Field (Target, "TO_Waypoint", Create (Val.TO_Waypoint));
      Set_Field (Target, "FROM_Waypoint", Create (Val.FROM_Waypoint));
   end;

   ------------
   -- Create --
   ------------

   function Create (Val : WNC_Message) return JSON_Value is
   begin
      return Ret : JSON_Value := Create_Object do
         Populate (Val, Ret);
      end return;
   end Create;

   ---------
   -- Get --
   ---------

   function Get (Val : GNATCOLL.JSON.JSON_Value) return WNC_Message is
   begin
      return Ret : WNC_Message do
         Map (Val, Ret);
      end return;
   end Get;

   ---------
   -- Get --
   ---------

   function Get
     (Val   : JSON_Value;
      Field : UTF8_String)
      return WNC_Message
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
      Field      : WNC_Message)
   is      
   begin
      Set_Field (Val, Field_Name, Create (Field));
   end Set_Field;

   ---------------
   -- Map_Field --
   ---------------
   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out WNC_Message) is
   begin
      if Name = "Distance_Nautical_Miles" then
         To.Distance_Nautical_Miles := Get (Value);
      elsif Name = "N_Nautical_Miles" then
         To.N_Nautical_Miles := Get (Value);
      elsif Name = "Distance_Kilometers" then
         To.Distance_Kilometers := Get (Value);
      elsif Name = "K_Kilometers" then
         To.K_Kilometers := Get (Value);
      elsif Name = "TO_Waypoint" then
         To.TO_Waypoint := Get (Value);
      elsif Name = "FROM_Waypoint" then
         To.FROM_Waypoint := Get (Value);
      else  
         null;
      end if;
   end;
   
   ---------
   -- Map --
   ---------
   procedure Map
     (Val : JSON_Value;
      To  : in out WNC_Message)
   is
      procedure Process (Name : UTF8_String; Value : JSON_Value);
      procedure Process (Name : UTF8_String; Value : JSON_Value) is
      begin
         Map_Field (Name, Value, To);
      end;
   begin
      Map_JSON_Object (Val, Process'Access);
   end Map;

end NMEA.Messages.WNC.JSON;