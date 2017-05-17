with NMEA.Messages.JSON; pragma Warnings (Off, NMEA.Messages.JSON);
with NMEA.JSON; pragma Warnings (Off, NMEA.JSON);

package body NMEA.Messages.RTE.JSON is
   use NMEA.Messages.JSON;
   use NMEA.JSON;
   

   ----------------------------------------------------
   --  RTE_Message
   ----------------------------------------------------
   procedure Populate (Val : RTE_Message; Target : in out JSON_Value) is
   begin
      Set_Field (Target, "Total_number_of_messages_being_transmitted", Create (Val.Total_number_of_messages_being_transmitted));
      Set_Field (Target, "Message_Number", Create (Val.Message_Number));
      Set_Field (Target, "Waypoint_ID", Create (Val.Waypoint_ID));
   end;

   ------------
   -- Create --
   ------------

   function Create (Val : RTE_Message) return JSON_Value is
   begin
      return Ret : JSON_Value := Create_Object do
         Populate (Val, Ret);
      end return;
   end Create;

   ---------
   -- Get --
   ---------

   function Get (Val : GNATCOLL.JSON.JSON_Value) return RTE_Message is
   begin
      return Ret : RTE_Message do
         Map (Val, Ret);
      end return;
   end Get;

   ---------
   -- Get --
   ---------

   function Get
     (Val   : JSON_Value;
      Field : UTF8_String)
      return RTE_Message
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
      Field      : RTE_Message)
   is      
   begin
      Set_Field (Val, Field_Name, Create (Field));
   end Set_Field;

   ---------------
   -- Map_Field --
   ---------------
   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out RTE_Message) is
   begin
      if Name = "Total_number_of_messages_being_transmitted" then
         To.Total_number_of_messages_being_transmitted := Get (Value);
      elsif Name = "Message_Number" then
         To.Message_Number := Get (Value);
      elsif Name = "Waypoint_ID" then
         To.Waypoint_ID := Get (Value);
      else  
         null;
      end if;
   end;
   
   ---------
   -- Map --
   ---------
   procedure Map
     (Val : JSON_Value;
      To  : in out RTE_Message)
   is
      procedure Process (Name : UTF8_String; Value : JSON_Value);
      procedure Process (Name : UTF8_String; Value : JSON_Value) is
      begin
         Map_Field (Name, Value, To);
      end;
   begin
      Map_JSON_Object (Val, Process'Access);
   end Map;

end NMEA.Messages.RTE.JSON;