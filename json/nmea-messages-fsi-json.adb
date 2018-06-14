with NMEA.Messages.JSON; pragma Warnings (Off, NMEA.Messages.JSON);
with NMEA.JSON; pragma Warnings (Off, NMEA.JSON);

package body NMEA.Messages.FSI.JSON is
   use NMEA.Messages.JSON;
   use NMEA.JSON;


   ----------------------------------------------------
   --  FSI_Message
   ----------------------------------------------------
   procedure Populate (Val : FSI_Message; Target : in out JSON_Value) is
   begin
      Set_Field (Target, "Transmitting_Frequency", Create (Val.Transmitting_Frequency));
      Set_Field (Target, "Receiving_Frequency", Create (Val.Receiving_Frequency));
      Set_Field (Target, "Communications_Mode", Create (Val.Communications_Mode));
      Set_Field (Target, "Power_Level", Create (Val.Power_Level));
   end;

   ------------
   -- Create --
   ------------

   function Create (Val : FSI_Message) return JSON_Value is
   begin
      return Ret : JSON_Value := Create_Object do
         Populate (Val, Ret);
      end return;
   end Create;

   ---------
   -- Get --
   ---------

   function Get (Val : GNATCOLL.JSON.JSON_Value) return FSI_Message is
   begin
      return Ret : FSI_Message do
         Map (Val, Ret);
      end return;
   end Get;

   ---------
   -- Get --
   ---------

   function Get
     (Val   : JSON_Value;
      Field : UTF8_String)
      return FSI_Message
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
      Field      : FSI_Message)
   is
   begin
      Set_Field (Val, Field_Name, Create (Field));
   end Set_Field;

   ---------------
   -- Map_Field --
   ---------------
   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out FSI_Message) is
   begin
      if Name = "Transmitting_Frequency" then
         To.Transmitting_Frequency := Get (Value);
      elsif Name = "Receiving_Frequency" then
         To.Receiving_Frequency := Get (Value);
      elsif Name = "Communications_Mode" then
         To.Communications_Mode := Get (Value);
      elsif Name = "Power_Level" then
         To.Power_Level := Get (Value);
      else
         Map_Field (Name, Value, Message (To));
      end if;
   end;

   ---------
   -- Map --
   ---------
   procedure Map
     (Val : JSON_Value;
      To  : in out FSI_Message)
   is
      procedure Process (Name : UTF8_String; Value : JSON_Value);
      procedure Process (Name : UTF8_String; Value : JSON_Value) is
      begin
         Map_Field (Name, Value, To);
      end;
   begin
      Map_JSON_Object (Val, Process'Access);
   end Map;

end NMEA.Messages.FSI.JSON;
