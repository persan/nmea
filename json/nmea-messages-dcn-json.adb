with NMEA.Messages.JSON; pragma Warnings (Off, NMEA.Messages.JSON);
with NMEA.JSON; pragma Warnings (Off, NMEA.JSON);

package body NMEA.Messages.DCN.JSON is
   use NMEA.Messages.JSON;
   use NMEA.JSON;
   

   ----------------------------------------------------
   --  DCN_Message
   ----------------------------------------------------
   procedure Populate (Val : DCN_Message; Target : in out JSON_Value) is
   begin
      Set_Field (Target, "Decca_Chain_Identifier", Create (Val.Decca_Chain_Identifier));
      Set_Field (Target, "Red_Zone_Identifier", Create (Val.Red_Zone_Identifier));
      Set_Field (Target, "Red_Line_Of_Position", Create (Val.Red_Line_Of_Position));
      Set_Field (Target, "Red_Master_Line_Status", Create (Val.Red_Master_Line_Status));
      Set_Field (Target, "Green_Zone_Identifier", Create (Val.Green_Zone_Identifier));
      Set_Field (Target, "Green_Line_Of_Position", Create (Val.Green_Line_Of_Position));
      Set_Field (Target, "Green_Master_Line_Status", Create (Val.Green_Master_Line_Status));
      Set_Field (Target, "Purple_Zone_Identifier", Create (Val.Purple_Zone_Identifier));
      Set_Field (Target, "Purple_Line_Of_Position", Create (Val.Purple_Line_Of_Position));
      Set_Field (Target, "Purple_Master_Line_Status", Create (Val.Purple_Master_Line_Status));
      Set_Field (Target, "Red_Line_Navigation_Use", Create (Val.Red_Line_Navigation_Use));
      Set_Field (Target, "Green_Line_Navigation_Use", Create (Val.Green_Line_Navigation_Use));
      Set_Field (Target, "Purple_Line_Navigation_Use", Create (Val.Purple_Line_Navigation_Use));
      Set_Field (Target, "Position_Uncertainity", Create (Val.Position_Uncertainity));
      Set_Field (Target, "N_Nautical_Miles", Create (Val.N_Nautical_Miles));
      Set_Field (Target, "Fix_Data_Basis", Create (Val.Fix_Data_Basis));
   end;

   ------------
   -- Create --
   ------------

   function Create (Val : DCN_Message) return JSON_Value is
   begin
      return Ret : JSON_Value := Create_Object do
         Populate (Val, Ret);
      end return;
   end Create;

   ---------
   -- Get --
   ---------

   function Get (Val : GNATCOLL.JSON.JSON_Value) return DCN_Message is
   begin
      return Ret : DCN_Message do
         Map (Val, Ret);
      end return;
   end Get;

   ---------
   -- Get --
   ---------

   function Get
     (Val   : JSON_Value;
      Field : UTF8_String)
      return DCN_Message
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
      Field      : DCN_Message)
   is      
   begin
      Set_Field (Val, Field_Name, Create (Field));
   end Set_Field;

   ---------------
   -- Map_Field --
   ---------------
   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out DCN_Message) is
   begin
      if Name = "Decca_Chain_Identifier" then
         To.Decca_Chain_Identifier := Get (Value);
      elsif Name = "Red_Zone_Identifier" then
         To.Red_Zone_Identifier := Get (Value);
      elsif Name = "Red_Line_Of_Position" then
         To.Red_Line_Of_Position := Get (Value);
      elsif Name = "Red_Master_Line_Status" then
         To.Red_Master_Line_Status := Get (Value);
      elsif Name = "Green_Zone_Identifier" then
         To.Green_Zone_Identifier := Get (Value);
      elsif Name = "Green_Line_Of_Position" then
         To.Green_Line_Of_Position := Get (Value);
      elsif Name = "Green_Master_Line_Status" then
         To.Green_Master_Line_Status := Get (Value);
      elsif Name = "Purple_Zone_Identifier" then
         To.Purple_Zone_Identifier := Get (Value);
      elsif Name = "Purple_Line_Of_Position" then
         To.Purple_Line_Of_Position := Get (Value);
      elsif Name = "Purple_Master_Line_Status" then
         To.Purple_Master_Line_Status := Get (Value);
      elsif Name = "Red_Line_Navigation_Use" then
         To.Red_Line_Navigation_Use := Get (Value);
      elsif Name = "Green_Line_Navigation_Use" then
         To.Green_Line_Navigation_Use := Get (Value);
      elsif Name = "Purple_Line_Navigation_Use" then
         To.Purple_Line_Navigation_Use := Get (Value);
      elsif Name = "Position_Uncertainity" then
         To.Position_Uncertainity := Get (Value);
      elsif Name = "N_Nautical_Miles" then
         To.N_Nautical_Miles := Get (Value);
      elsif Name = "Fix_Data_Basis" then
         To.Fix_Data_Basis := Get (Value);
      else  
         null;
      end if;
   end;
   
   ---------
   -- Map --
   ---------
   procedure Map
     (Val : JSON_Value;
      To  : in out DCN_Message)
   is
      procedure Process (Name : UTF8_String; Value : JSON_Value);
      procedure Process (Name : UTF8_String; Value : JSON_Value) is
      begin
         Map_Field (Name, Value, To);
      end;
   begin
      Map_JSON_Object (Val, Process'Access);
   end Map;

end NMEA.Messages.DCN.JSON;