with NMEA.Messages.JSON; pragma Warnings (Off, NMEA.Messages.JSON);
with NMEA.JSON; pragma Warnings (Off, NMEA.JSON);

package body NMEA.Messages.SFI.JSON is
   use NMEA.Messages.JSON;
   use NMEA.JSON;
   

   ----------------------------------------------------
   --  SFI_Message
   ----------------------------------------------------
   procedure Populate (Val : SFI_Message; Target : in out JSON_Value) is
   begin
      Set_Field (Target, "Total_Number_Of_Messages", Create (Val.Total_Number_Of_Messages));
      Set_Field (Target, "Message_Number", Create (Val.Message_Number));
      Set_Field (Target, "Frequency_1", Create (Val.Frequency_1));
      Set_Field (Target, "Mode_1", Create (Val.Mode_1));
   end;

   ------------
   -- Create --
   ------------

   function Create (Val : SFI_Message) return JSON_Value is
   begin
      return Ret : JSON_Value := Create_Object do
         Populate (Val, Ret);
      end return;
   end Create;

   ---------
   -- Get --
   ---------

   function Get (Val : GNATCOLL.JSON.JSON_Value) return SFI_Message is
   begin
      return Ret : SFI_Message do
         Map (Val, Ret);
      end return;
   end Get;

   ---------
   -- Get --
   ---------

   function Get
     (Val   : JSON_Value;
      Field : UTF8_String)
      return SFI_Message
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
      Field      : SFI_Message)
   is      
   begin
      Set_Field (Val, Field_Name, Create (Field));
   end Set_Field;

   ---------------
   -- Map_Field --
   ---------------
   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out SFI_Message) is
   begin
      if Name = "Total_Number_Of_Messages" then
         To.Total_Number_Of_Messages := Get (Value);
      elsif Name = "Message_Number" then
         To.Message_Number := Get (Value);
      elsif Name = "Frequency_1" then
         To.Frequency_1 := Get (Value);
      elsif Name = "Mode_1" then
         To.Mode_1 := Get (Value);
      else  
         null;
      end if;
   end;
   
   ---------
   -- Map --
   ---------
   procedure Map
     (Val : JSON_Value;
      To  : in out SFI_Message)
   is
      procedure Process (Name : UTF8_String; Value : JSON_Value);
      procedure Process (Name : UTF8_String; Value : JSON_Value) is
      begin
         Map_Field (Name, Value, To);
      end;
   begin
      Map_JSON_Object (Val, Process'Access);
   end Map;

end NMEA.Messages.SFI.JSON;