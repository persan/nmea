with NMEA.Messages.JSON; pragma Warnings (Off, NMEA.Messages.JSON);
with NMEA.JSON; pragma Warnings (Off, NMEA.JSON);

package body NMEA.Messages.OLN.JSON is
   use NMEA.Messages.JSON;
   use NMEA.JSON;
   

   ----------------------------------------------------
   --  OLN_Message
   ----------------------------------------------------
   procedure Populate (Val : OLN_Message; Target : in out JSON_Value) is
   begin
      Set_Field (Target, "Omega_Pair_1", Create (Val.Omega_Pair_1));
      Set_Field (Target, "Omega_Pair_16", Create (Val.Omega_Pair_16));
      Set_Field (Target, "Omega_Pair_17", Create (Val.Omega_Pair_17));
   end;

   ------------
   -- Create --
   ------------

   function Create (Val : OLN_Message) return JSON_Value is
   begin
      return Ret : JSON_Value := Create_Object do
         Populate (Val, Ret);
      end return;
   end Create;

   ---------
   -- Get --
   ---------

   function Get (Val : GNATCOLL.JSON.JSON_Value) return OLN_Message is
   begin
      return Ret : OLN_Message do
         Map (Val, Ret);
      end return;
   end Get;

   ---------
   -- Get --
   ---------

   function Get
     (Val   : JSON_Value;
      Field : UTF8_String)
      return OLN_Message
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
      Field      : OLN_Message)
   is      
   begin
      Set_Field (Val, Field_Name, Create (Field));
   end Set_Field;

   ---------------
   -- Map_Field --
   ---------------
   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out OLN_Message) is
   begin
      if Name = "Omega_Pair_1" then
         To.Omega_Pair_1 := Get (Value);
      elsif Name = "Omega_Pair_16" then
         To.Omega_Pair_16 := Get (Value);
      elsif Name = "Omega_Pair_17" then
         To.Omega_Pair_17 := Get (Value);
      else  
         null;
      end if;
   end;
   
   ---------
   -- Map --
   ---------
   procedure Map
     (Val : JSON_Value;
      To  : in out OLN_Message)
   is
      procedure Process (Name : UTF8_String; Value : JSON_Value);
      procedure Process (Name : UTF8_String; Value : JSON_Value) is
      begin
         Map_Field (Name, Value, To);
      end;
   begin
      Map_JSON_Object (Val, Process'Access);
   end Map;

end NMEA.Messages.OLN.JSON;