with NMEA.JSON; pragma Warnings (Off, NMEA.JSON);

package body NMEA.Links.JSON is
   use NMEA.JSON;
   

   ----------------------------------------------------
   --  Nmea_Stream
   ----------------------------------------------------
   procedure Populate (Val : Nmea_Stream; Target : in out JSON_Value) is
   begin
      Set_Field (Target, "In_Cursor", Create (Val.In_Cursor));
      Set_Field (Target, "Length", Create (Val.Length));
   end;

   ------------
   -- Create --
   ------------

   function Create (Val : Nmea_Stream) return JSON_Value is
   begin
      return Ret : JSON_Value := Create_Object do
         Populate (Val, Ret);
      end return;
   end Create;

   ---------
   -- Get --
   ---------

   function Get (Val : GNATCOLL.JSON.JSON_Value) return Nmea_Stream is
   begin
      return Ret : Nmea_Stream do
         Map (Val, Ret);
      end return;
   end Get;

   ---------
   -- Get --
   ---------

   function Get
     (Val   : JSON_Value;
      Field : UTF8_String)
      return Nmea_Stream
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
      Field      : Nmea_Stream)
   is      
   begin
      Set_Field (Val, Field_Name, Create (Field));
   end Set_Field;

   ---------------
   -- Map_Field --
   ---------------
   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out Nmea_Stream) is
   begin
      if Name = "In_Cursor" then
         To.In_Cursor := Get (Value);
      elsif Name = "Length" then
         To.Length := Get (Value);
      else  
         null;
      end if;
   end;
   
   ---------
   -- Map --
   ---------
   procedure Map
     (Val : JSON_Value;
      To  : in out Nmea_Stream)
   is
      procedure Process (Name : UTF8_String; Value : JSON_Value);
      procedure Process (Name : UTF8_String; Value : JSON_Value) is
      begin
         Map_Field (Name, Value, To);
      end;
   begin
      Map_JSON_Object (Val, Process'Access);
   end Map;

   ----------------------------------------------------
   --  Nmea_Frame
   ----------------------------------------------------
   procedure Populate (Val : Nmea_Frame; Target : in out JSON_Value) is
   begin
      Set_Field (Target, "Time", Create (Val.Time));
      Set_Field (Target, "Data", Create (Val.Data));
      Set_Field (Target, "Cursor", Create (Val.Cursor));
      Set_Field (Target, "N_Stream", Create (Val.N_Stream));
   end;

   ------------
   -- Create --
   ------------

   function Create (Val : Nmea_Frame) return JSON_Value is
   begin
      return Ret : JSON_Value := Create_Object do
         Populate (Val, Ret);
      end return;
   end Create;

   ---------
   -- Get --
   ---------

   function Get (Val : GNATCOLL.JSON.JSON_Value) return Nmea_Frame is
   begin
      return Ret : Nmea_Frame do
         Map (Val, Ret);
      end return;
   end Get;

   ---------
   -- Get --
   ---------

   function Get
     (Val   : JSON_Value;
      Field : UTF8_String)
      return Nmea_Frame
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
      Field      : Nmea_Frame)
   is      
   begin
      Set_Field (Val, Field_Name, Create (Field));
   end Set_Field;

   ---------------
   -- Map_Field --
   ---------------
   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out Nmea_Frame) is
   begin
      if Name = "Time" then
         To.Time := Get (Value);
      elsif Name = "Data" then
         To.Data := Get (Value);
      elsif Name = "Cursor" then
         To.Cursor := Get (Value);
      elsif Name = "N_Stream" then
         To.N_Stream := Get (Value);
      else  
         null;
      end if;
   end;
   
   ---------
   -- Map --
   ---------
   procedure Map
     (Val : JSON_Value;
      To  : in out Nmea_Frame)
   is
      procedure Process (Name : UTF8_String; Value : JSON_Value);
      procedure Process (Name : UTF8_String; Value : JSON_Value) is
      begin
         Map_Field (Name, Value, To);
      end;
   begin
      Map_JSON_Object (Val, Process'Access);
   end Map;

end NMEA.Links.JSON;