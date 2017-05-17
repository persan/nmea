with NMEA.Messages.JSON; pragma Warnings (Off, NMEA.Messages.JSON);
with NMEA.JSON; pragma Warnings (Off, NMEA.JSON);

package body NMEA.Messages.XDR.JSON is
   use NMEA.Messages.JSON;
   use NMEA.JSON;
   

   ----------------------------------------------------
   --  XDR_Message
   ----------------------------------------------------
   procedure Populate (Val : XDR_Message; Target : in out JSON_Value) is
   begin
      Set_Field (Target, "Transducer_Type", Create (Val.Transducer_Type));
      Set_Field (Target, "Measurement_Data", Create (Val.Measurement_Data));
      Set_Field (Target, "Units_Of_Measurement", Create (Val.Units_Of_Measurement));
      Set_Field (Target, "Name_Of_Transducer", Create (Val.Name_Of_Transducer));
   end;

   ------------
   -- Create --
   ------------

   function Create (Val : XDR_Message) return JSON_Value is
   begin
      return Ret : JSON_Value := Create_Object do
         Populate (Val, Ret);
      end return;
   end Create;

   ---------
   -- Get --
   ---------

   function Get (Val : GNATCOLL.JSON.JSON_Value) return XDR_Message is
   begin
      return Ret : XDR_Message do
         Map (Val, Ret);
      end return;
   end Get;

   ---------
   -- Get --
   ---------

   function Get
     (Val   : JSON_Value;
      Field : UTF8_String)
      return XDR_Message
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
      Field      : XDR_Message)
   is      
   begin
      Set_Field (Val, Field_Name, Create (Field));
   end Set_Field;

   ---------------
   -- Map_Field --
   ---------------
   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out XDR_Message) is
   begin
      if Name = "Transducer_Type" then
         To.Transducer_Type := Get (Value);
      elsif Name = "Measurement_Data" then
         To.Measurement_Data := Get (Value);
      elsif Name = "Units_Of_Measurement" then
         To.Units_Of_Measurement := Get (Value);
      elsif Name = "Name_Of_Transducer" then
         To.Name_Of_Transducer := Get (Value);
      else  
         null;
      end if;
   end;
   
   ---------
   -- Map --
   ---------
   procedure Map
     (Val : JSON_Value;
      To  : in out XDR_Message)
   is
      procedure Process (Name : UTF8_String; Value : JSON_Value);
      procedure Process (Name : UTF8_String; Value : JSON_Value) is
      begin
         Map_Field (Name, Value, To);
      end;
   begin
      Map_JSON_Object (Val, Process'Access);
   end Map;

end NMEA.Messages.XDR.JSON;