with NMEA.Messages.JSON; pragma Warnings (Off, NMEA.Messages.JSON);
with NMEA.JSON; pragma Warnings (Off, NMEA.JSON);

package body NMEA.Messages.ZFO.JSON is
   use NMEA.Messages.JSON;
   use NMEA.JSON;
   

   ----------------------------------------------------
   --  ZFO_Message
   ----------------------------------------------------
   procedure Populate (Val : ZFO_Message; Target : in out JSON_Value) is
   begin
      Set_Field (Target, "Universal_Time_Coordinated_UTC", Create (Val.Universal_Time_Coordinated_UTC));
      Set_Field (Target, "Elapsed_Time", Create (Val.Elapsed_Time));
      Set_Field (Target, "Origin_Waypoint_ID", Create (Val.Origin_Waypoint_ID));
   end;

   ------------
   -- Create --
   ------------

   function Create (Val : ZFO_Message) return JSON_Value is
   begin
      return Ret : JSON_Value := Create_Object do
         Populate (Val, Ret);
      end return;
   end Create;

   ---------
   -- Get --
   ---------

   function Get (Val : GNATCOLL.JSON.JSON_Value) return ZFO_Message is
   begin
      return Ret : ZFO_Message do
         Map (Val, Ret);
      end return;
   end Get;

   ---------
   -- Get --
   ---------

   function Get
     (Val   : JSON_Value;
      Field : UTF8_String)
      return ZFO_Message
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
      Field      : ZFO_Message)
   is      
   begin
      Set_Field (Val, Field_Name, Create (Field));
   end Set_Field;

   ---------------
   -- Map_Field --
   ---------------
   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out ZFO_Message) is
   begin
      if Name = "Universal_Time_Coordinated_UTC" then
         To.Universal_Time_Coordinated_UTC := Get (Value);
      elsif Name = "Elapsed_Time" then
         To.Elapsed_Time := Get (Value);
      elsif Name = "Origin_Waypoint_ID" then
         To.Origin_Waypoint_ID := Get (Value);
      else  
         null;
      end if;
   end;
   
   ---------
   -- Map --
   ---------
   procedure Map
     (Val : JSON_Value;
      To  : in out ZFO_Message)
   is
      procedure Process (Name : UTF8_String; Value : JSON_Value);
      procedure Process (Name : UTF8_String; Value : JSON_Value) is
      begin
         Map_Field (Name, Value, To);
      end;
   begin
      Map_JSON_Object (Val, Process'Access);
   end Map;

end NMEA.Messages.ZFO.JSON;