with NMEA.JSON; pragma Warnings (Off, NMEA.JSON);

package body NMEA.Messages.JSON is
   use NMEA.JSON;


   ----------------------------------------------------
   --  Message
   ----------------------------------------------------
   procedure Populate (Val : Message; Target : in out JSON_Value) is
   begin
      Set_Field (Target, "Talker", Create (Val.Talker));
   end;

   ------------
   -- Create --
   ------------

   function Create (Val : Message) return JSON_Value is
   begin
      return Ret : JSON_Value := Create_Object do
         Populate (Val, Ret);
      end return;
   end Create;

   ---------
   -- Get --
   ---------

   function Get (Val : GNATCOLL.JSON.JSON_Value) return Message is
   begin
      return Ret : Message do
         Map (Val, Ret);
      end return;
   end Get;

   ---------
   -- Get --
   ---------

   function Get
     (Val   : JSON_Value;
      Field : UTF8_String)
      return Message
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
      Field      : Message)
   is
   begin
      Set_Field (Val, Field_Name, Create (Field));
   end Set_Field;

   ---------------
   -- Map_Field --
   ---------------
   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out Message) is
   begin
      if Name = "Talker" then
         To.Talker := Get (Value);
      else
         null;
      end if;
   end;

   ---------
   -- Map --
   ---------
   procedure Map
     (Val : JSON_Value;
      To  : in out Message)
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
   --  NMEA_Field
   ----------------------------------------------------
   procedure Populate (Val : NMEA_Field; Target : in out JSON_Value) is
   begin
      Set_Field (Target, "Is_Valid", Create (Val.Is_Valid));
   end;

   ------------
   -- Create --
   ------------

   function Create (Val : NMEA_Field) return JSON_Value is
   begin
      return Ret : JSON_Value := Create_Object do
         Populate (Val, Ret);
      end return;
   end Create;

   ---------
   -- Get --
   ---------

   function Get (Val : GNATCOLL.JSON.JSON_Value) return NMEA_Field is
   begin
      return Ret : NMEA_Field do
         Map (Val, Ret);
      end return;
   end Get;

   ---------
   -- Get --
   ---------

   function Get
     (Val   : JSON_Value;
      Field : UTF8_String)
      return NMEA_Field
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
      Field      : NMEA_Field)
   is
   begin
      Set_Field (Val, Field_Name, Create (Field));
   end Set_Field;

   ---------------
   -- Map_Field --
   ---------------
   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out NMEA_Field) is
   begin
      if Name = "Is_Valid" then
         To.Is_Valid := Get (Value);
      else
         null;
      end if;
   end;

   ---------
   -- Map --
   ---------
   procedure Map
     (Val : JSON_Value;
      To  : in out NMEA_Field)
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
   --  UTC_Time_Type
   ----------------------------------------------------
   procedure Populate (Val : UTC_Time_Type; Target : in out JSON_Value) is
   begin
      Set_Field (Target, "Data", Create (Val.Data));
   end;

   ------------
   -- Create --
   ------------

   function Create (Val : UTC_Time_Type) return JSON_Value is
   begin
      return Ret : JSON_Value := Create_Object do
         Populate (Val, Ret);
      end return;
   end Create;

   ---------
   -- Get --
   ---------

   function Get (Val : GNATCOLL.JSON.JSON_Value) return UTC_Time_Type is
   begin
      return Ret : UTC_Time_Type do
         Map (Val, Ret);
      end return;
   end Get;

   ---------
   -- Get --
   ---------

   function Get
     (Val   : JSON_Value;
      Field : UTF8_String)
      return UTC_Time_Type
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
      Field      : UTC_Time_Type)
   is
   begin
      Set_Field (Val, Field_Name, Create (Field));
   end Set_Field;

   ---------------
   -- Map_Field --
   ---------------
   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out UTC_Time_Type) is
   begin
      if Name = "Data" then
         To.Data := Get (Value);
      else
         null;
      end if;
   end;

   ---------
   -- Map --
   ---------
   procedure Map
     (Val : JSON_Value;
      To  : in out UTC_Time_Type)
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
   --  NMEA_Long_Float
   ----------------------------------------------------
   procedure Populate (Val : NMEA_Long_Float; Target : in out JSON_Value) is
   begin
      Set_Field (Target, "Data", Create (Val.Data));
   end;

   ------------
   -- Create --
   ------------

   function Create (Val : NMEA_Long_Float) return JSON_Value is
   begin
      return Ret : JSON_Value := Create_Object do
         Populate (Val, Ret);
      end return;
   end Create;

   ---------
   -- Get --
   ---------

   function Get (Val : GNATCOLL.JSON.JSON_Value) return NMEA_Long_Float is
   begin
      return Ret : NMEA_Long_Float do
         Map (Val, Ret);
      end return;
   end Get;

   ---------
   -- Get --
   ---------

   function Get
     (Val   : JSON_Value;
      Field : UTF8_String)
      return NMEA_Long_Float
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
      Field      : NMEA_Long_Float)
   is
   begin
      Set_Field (Val, Field_Name, Create (Field));
   end Set_Field;

   ---------------
   -- Map_Field --
   ---------------
   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out NMEA_Long_Float) is
   begin
      if Name = "Data" then
         To.Data := Get (Value);
      else
         null;
      end if;
   end;

   ---------
   -- Map --
   ---------
   procedure Map
     (Val : JSON_Value;
      To  : in out NMEA_Long_Float)
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
   --  Nmea_Hight
   ----------------------------------------------------
   procedure Populate (Val : Nmea_Hight; Target : in out JSON_Value) is
   begin
      Populate (NMEA_Long_Float (Val), Target);
   end;

   ------------
   -- Create --
   ------------

   function Create (Val : Nmea_Hight) return JSON_Value is
   begin
      return Ret : JSON_Value := Create_Object do
         Populate (Val, Ret);
      end return;
   end Create;

   ---------
   -- Get --
   ---------

   function Get (Val : GNATCOLL.JSON.JSON_Value) return Nmea_Hight is
   begin
      return Ret : Nmea_Hight do
         Map (Val, Ret);
      end return;
   end Get;

   ---------
   -- Get --
   ---------

   function Get
     (Val   : JSON_Value;
      Field : UTF8_String)
      return Nmea_Hight
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
      Field      : Nmea_Hight)
   is
   begin
      Set_Field (Val, Field_Name, Create (Field));
   end Set_Field;

   ---------------
   -- Map_Field --
   ---------------
   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out Nmea_Hight) is
   begin
      null;

   end;

   ---------
   -- Map --
   ---------
   procedure Map
     (Val : JSON_Value;
      To  : in out Nmea_Hight)
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
   --  NMEA_Integer
   ----------------------------------------------------
   procedure Populate (Val : NMEA_Integer; Target : in out JSON_Value) is
   begin
      Set_Field (Target, "Data", Create (Val.Data));
   end;

   ------------
   -- Create --
   ------------

   function Create (Val : NMEA_Integer) return JSON_Value is
   begin
      return Ret : JSON_Value := Create_Object do
         Populate (Val, Ret);
      end return;
   end Create;

   ---------
   -- Get --
   ---------

   function Get (Val : GNATCOLL.JSON.JSON_Value) return NMEA_Integer is
   begin
      return Ret : NMEA_Integer do
         Map (Val, Ret);
      end return;
   end Get;

   ---------
   -- Get --
   ---------

   function Get
     (Val   : JSON_Value;
      Field : UTF8_String)
      return NMEA_Integer
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
      Field      : NMEA_Integer)
   is
   begin
      Set_Field (Val, Field_Name, Create (Field));
   end Set_Field;

   ---------------
   -- Map_Field --
   ---------------
   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out NMEA_Integer) is
   begin
      if Name = "Data" then
         To.Data := Get (Value);
      else
         null;
      end if;
   end;

   ---------
   -- Map --
   ---------
   procedure Map
     (Val : JSON_Value;
      To  : in out NMEA_Integer)
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
   --  NMEA_String
   ----------------------------------------------------
   procedure Populate (Val : NMEA_String; Target : in out JSON_Value) is
   begin
      Set_Field (Target, "Value", Create (Val.Value));
   end;

   ------------
   -- Create --
   ------------

   function Create (Val : NMEA_String) return JSON_Value is
   begin
      return Ret : JSON_Value := Create_Object do
         Populate (Val, Ret);
      end return;
   end Create;

   ---------
   -- Get --
   ---------

   function Get (Val : GNATCOLL.JSON.JSON_Value) return NMEA_String is
   begin
      return Ret : NMEA_String do
         Map (Val, Ret);
      end return;
   end Get;

   ---------
   -- Get --
   ---------

   function Get
     (Val   : JSON_Value;
      Field : UTF8_String)
      return NMEA_String
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
      Field      : NMEA_String)
   is
   begin
      Set_Field (Val, Field_Name, Create (Field));
   end Set_Field;

   ---------------
   -- Map_Field --
   ---------------
   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out NMEA_String) is
   begin
      if Name = "Value" then
         To.Value := Get (Value);
      else
         null;
      end if;
   end;

   ---------
   -- Map --
   ---------
   procedure Map
     (Val : JSON_Value;
      To  : in out NMEA_String)
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
   --  Latitude_Type
   ----------------------------------------------------
   procedure Populate (Val : Latitude_Type; Target : in out JSON_Value) is
   begin
      null;
   end;

   ------------
   -- Create --
   ------------

   function Create (Val : Latitude_Type) return JSON_Value is
   begin
      return Ret : JSON_Value := Create_Object do
         Populate (Val, Ret);
      end return;
   end Create;

   ---------
   -- Get --
   ---------

   function Get (Val : GNATCOLL.JSON.JSON_Value) return Latitude_Type is
   begin
      return Ret : Latitude_Type do
         Map (Val, Ret);
      end return;
   end Get;

   ---------
   -- Get --
   ---------

   function Get
     (Val   : JSON_Value;
      Field : UTF8_String)
      return Latitude_Type
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
      Field      : Latitude_Type)
   is
   begin
      Set_Field (Val, Field_Name, Create (Field));
   end Set_Field;

   ---------------
   -- Map_Field --
   ---------------
   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out Latitude_Type) is
   begin
      null;
   end;

   ---------
   -- Map --
   ---------
   procedure Map
     (Val : JSON_Value;
      To  : in out Latitude_Type)
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
   --  Longitude_Type
   ----------------------------------------------------
   procedure Populate (Val : Longitude_Type; Target : in out JSON_Value) is
   begin
      null;
   end;

   ------------
   -- Create --
   ------------

   function Create (Val : Longitude_Type) return JSON_Value is
   begin
      return Ret : JSON_Value := Create_Object do
         Populate (Val, Ret);
      end return;
   end Create;

   ---------
   -- Get --
   ---------

   function Get (Val : GNATCOLL.JSON.JSON_Value) return Longitude_Type is
   begin
      return Ret : Longitude_Type do
         Map (Val, Ret);
      end return;
   end Get;

   ---------
   -- Get --
   ---------

   function Get
     (Val   : JSON_Value;
      Field : UTF8_String)
      return Longitude_Type
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
      Field      : Longitude_Type)
   is
   begin
      Set_Field (Val, Field_Name, Create (Field));
   end Set_Field;

   ---------------
   -- Map_Field --
   ---------------
   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out Longitude_Type) is
   begin
      null;
   end;

   ---------
   -- Map --
   ---------
   procedure Map
     (Val : JSON_Value;
      To  : in out Longitude_Type)
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
   --  Fix_Quality_Type
   ----------------------------------------------------
   procedure Populate (Val : Fix_Quality_Type; Target : in out JSON_Value) is
   begin
      null;
   end;

   ------------
   -- Create --
   ------------

   function Create (Val : Fix_Quality_Type) return JSON_Value is
   begin
      return Ret : JSON_Value := Create_Object do
         Populate (Val, Ret);
      end return;
   end Create;

   ---------
   -- Get --
   ---------

   function Get (Val : GNATCOLL.JSON.JSON_Value) return Fix_Quality_Type is
   begin
      return Ret : Fix_Quality_Type do
         Map (Val, Ret);
      end return;
   end Get;

   ---------
   -- Get --
   ---------

   function Get
     (Val   : JSON_Value;
      Field : UTF8_String)
      return Fix_Quality_Type
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
      Field      : Fix_Quality_Type)
   is
   begin
      Set_Field (Val, Field_Name, Create (Field));
   end Set_Field;

   ---------------
   -- Map_Field --
   ---------------
   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out Fix_Quality_Type) is
   begin
      null;
   end;

   ---------
   -- Map --
   ---------
   procedure Map
     (Val : JSON_Value;
      To  : in out Fix_Quality_Type)
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
   --  Count
   ----------------------------------------------------
   procedure Populate (Val : Count; Target : in out JSON_Value) is
   begin
      null;
   end;

   ------------
   -- Create --
   ------------

   function Create (Val : Count) return JSON_Value is
   begin
      return Ret : JSON_Value := Create_Object do
         Populate (Val, Ret);
      end return;
   end Create;

   ---------
   -- Get --
   ---------

   function Get (Val : GNATCOLL.JSON.JSON_Value) return Count is
   begin
      return Ret : Count do
         Map (Val, Ret);
      end return;
   end Get;

   ---------
   -- Get --
   ---------

   function Get
     (Val   : JSON_Value;
      Field : UTF8_String)
      return Count
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
      Field      : Count)
   is
   begin
      Set_Field (Val, Field_Name, Create (Field));
   end Set_Field;

   ---------------
   -- Map_Field --
   ---------------
   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out Count) is
   begin
      null;
   end;

   ---------
   -- Map --
   ---------
   procedure Map
     (Val : JSON_Value;
      To  : in out Count)
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
   --  Waypoint_ID
   ----------------------------------------------------
   procedure Populate (Val : Waypoint_ID; Target : in out JSON_Value) is
   begin
      null;
   end;

   ------------
   -- Create --
   ------------

   function Create (Val : Waypoint_ID) return JSON_Value is
   begin
      return Ret : JSON_Value := Create_Object do
         Populate (Val, Ret);
      end return;
   end Create;

   ---------
   -- Get --
   ---------

   function Get (Val : GNATCOLL.JSON.JSON_Value) return Waypoint_ID is
   begin
      return Ret : Waypoint_ID do
         Map (Val, Ret);
      end return;
   end Get;

   ---------
   -- Get --
   ---------

   function Get
     (Val   : JSON_Value;
      Field : UTF8_String)
      return Waypoint_ID
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
      Field      : Waypoint_ID)
   is
   begin
      Set_Field (Val, Field_Name, Create (Field));
   end Set_Field;

   ---------------
   -- Map_Field --
   ---------------
   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out Waypoint_ID) is
   begin
      null;
   end;

   ---------
   -- Map --
   ---------
   procedure Map
     (Val : JSON_Value;
      To  : in out Waypoint_ID)
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
   --  Dilution
   ----------------------------------------------------
   procedure Populate (Val : Dilution; Target : in out JSON_Value) is
   begin
      null;
   end;

   ------------
   -- Create --
   ------------

   function Create (Val : Dilution) return JSON_Value is
   begin
      return Ret : JSON_Value := Create_Object do
         Populate (Val, Ret);
      end return;
   end Create;

   ---------
   -- Get --
   ---------

   function Get (Val : GNATCOLL.JSON.JSON_Value) return Dilution is
   begin
      return Ret : Dilution do
         Map (Val, Ret);
      end return;
   end Get;

   ---------
   -- Get --
   ---------

   function Get
     (Val   : JSON_Value;
      Field : UTF8_String)
      return Dilution
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
      Field      : Dilution)
   is
   begin
      Set_Field (Val, Field_Name, Create (Field));
   end Set_Field;

   ---------------
   -- Map_Field --
   ---------------
   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out Dilution) is
   begin
      null;
   end;

   ---------
   -- Map --
   ---------
   procedure Map
     (Val : JSON_Value;
      To  : in out Dilution)
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
   --  Meters
   ----------------------------------------------------
   procedure Populate (Val : Meters; Target : in out JSON_Value) is
   begin
      null;
   end;

   ------------
   -- Create --
   ------------

   function Create (Val : Meters) return JSON_Value is
   begin
      return Ret : JSON_Value := Create_Object do
         Populate (Val, Ret);
      end return;
   end Create;

   ---------
   -- Get --
   ---------

   function Get (Val : GNATCOLL.JSON.JSON_Value) return Meters is
   begin
      return Ret : Meters do
         Map (Val, Ret);
      end return;
   end Get;

   ---------
   -- Get --
   ---------

   function Get
     (Val   : JSON_Value;
      Field : UTF8_String)
      return Meters
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
      Field      : Meters)
   is
   begin
      Set_Field (Val, Field_Name, Create (Field));
   end Set_Field;

   ---------------
   -- Map_Field --
   ---------------
   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out Meters) is
   begin
      E
      null;
   end if;
end;

---------
-- Map --
---------
procedure Map
  (Val : JSON_Value;
   To  : in out Meters)
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
--  NMEA_Seconds
----------------------------------------------------
procedure Populate (Val : NMEA_Seconds; Target : in out JSON_Value) is
begin
   Set_Field (Target, "Data", Create (Val.Data));
end;

------------
-- Create --
------------

function Create (Val : NMEA_Seconds) return JSON_Value is
begin
   return Ret : JSON_Value := Create_Object do
      Populate (Val, Ret);
   end return;
end Create;

---------
-- Get --
---------

function Get (Val : GNATCOLL.JSON.JSON_Value) return NMEA_Seconds is
begin
   return Ret : NMEA_Seconds do
      Map (Val, Ret);
   end return;
end Get;

---------
-- Get --
---------

function Get
  (Val   : JSON_Value;
   Field : UTF8_String)
      return NMEA_Seconds
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
   Field      : NMEA_Seconds)
is
begin
   Set_Field (Val, Field_Name, Create (Field));
end Set_Field;

---------------
-- Map_Field --
---------------
procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out NMEA_Seconds) is
begin
   if Name = "Data" then
      To.Data := Get (Value);
   else
      null;
   end if;
end;

---------
-- Map --
---------
procedure Map
  (Val : JSON_Value;
   To  : in out NMEA_Seconds)
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
--  DGPS_Station_ID
----------------------------------------------------
procedure Populate (Val : DGPS_Station_ID; Target : in out JSON_Value) is
begin
end;

------------
-- Create --
------------

function Create (Val : DGPS_Station_ID) return JSON_Value is
begin
   return Ret : JSON_Value := Create_Object do
      Populate (Val, Ret);
   end return;
end Create;

---------
-- Get --
---------

function Get (Val : GNATCOLL.JSON.JSON_Value) return DGPS_Station_ID is
begin
   return Ret : DGPS_Station_ID do
      Map (Val, Ret);
   end return;
end Get;

---------
-- Get --
---------

function Get
  (Val   : JSON_Value;
   Field : UTF8_String)
      return DGPS_Station_ID
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
   Field      : DGPS_Station_ID)
is
begin
   Set_Field (Val, Field_Name, Create (Field));
end Set_Field;

---------------
-- Map_Field --
---------------
procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out DGPS_Station_ID) is
begin
   E
   null;
end if;
end;

---------
-- Map --
---------
procedure Map
  (Val : JSON_Value;
   To  : in out DGPS_Station_ID)
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
--  NMEA_Status_Type
----------------------------------------------------
procedure Populate (Val : NMEA_Status_Type; Target : in out JSON_Value) is
begin
end;

------------
-- Create --
------------

function Create (Val : NMEA_Status_Type) return JSON_Value is
begin
   return Ret : JSON_Value := Create_Object do
      Populate (Val, Ret);
   end return;
end Create;

---------
-- Get --
---------

function Get (Val : GNATCOLL.JSON.JSON_Value) return NMEA_Status_Type is
begin
   return Ret : NMEA_Status_Type do
      Map (Val, Ret);
   end return;
end Get;

---------
-- Get --
---------

function Get
  (Val   : JSON_Value;
   Field : UTF8_String)
      return NMEA_Status_Type
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
   Field      : NMEA_Status_Type)
is
begin
   Set_Field (Val, Field_Name, Create (Field));
end Set_Field;

---------------
-- Map_Field --
---------------
procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out NMEA_Status_Type) is
begin
   E
   null;
end if;
end;

---------
-- Map --
---------
procedure Map
  (Val : JSON_Value;
   To  : in out NMEA_Status_Type)
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
--  NMEA_Status
----------------------------------------------------
procedure Populate (Val : NMEA_Status; Target : in out JSON_Value) is
begin
   Set_Field (Target, "Data", Create (Val.Data));
end;

------------
-- Create --
------------

function Create (Val : NMEA_Status) return JSON_Value is
begin
   return Ret : JSON_Value := Create_Object do
      Populate (Val, Ret);
   end return;
end Create;

---------
-- Get --
---------

function Get (Val : GNATCOLL.JSON.JSON_Value) return NMEA_Status is
begin
   return Ret : NMEA_Status do
      Map (Val, Ret);
   end return;
end Get;

---------
-- Get --
---------

function Get
  (Val   : JSON_Value;
   Field : UTF8_String)
      return NMEA_Status
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
   Field      : NMEA_Status)
is
begin
   Set_Field (Val, Field_Name, Create (Field));
end Set_Field;

---------------
-- Map_Field --
---------------
procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out NMEA_Status) is
begin
   if Name = "Data" then
      To.Data := Get (Value);
   else
      null;
   end if;
end;

---------
-- Map --
---------
procedure Map
  (Val : JSON_Value;
   To  : in out NMEA_Status)
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
--  NMEA_Left_Right_Type
----------------------------------------------------
procedure Populate (Val : NMEA_Left_Right_Type; Target : in out JSON_Value) is
begin
end;

------------
-- Create --
------------

function Create (Val : NMEA_Left_Right_Type) return JSON_Value is
begin
   return Ret : JSON_Value := Create_Object do
      Populate (Val, Ret);
   end return;
end Create;

---------
-- Get --
---------

function Get (Val : GNATCOLL.JSON.JSON_Value) return NMEA_Left_Right_Type is
begin
   return Ret : NMEA_Left_Right_Type do
      Map (Val, Ret);
   end return;
end Get;

---------
-- Get --
---------

function Get
  (Val   : JSON_Value;
   Field : UTF8_String)
      return NMEA_Left_Right_Type
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
   Field      : NMEA_Left_Right_Type)
is
begin
   Set_Field (Val, Field_Name, Create (Field));
end Set_Field;

---------------
-- Map_Field --
---------------
procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out NMEA_Left_Right_Type) is
begin
   E
   null;
end if;
end;

---------
-- Map --
---------
procedure Map
  (Val : JSON_Value;
   To  : in out NMEA_Left_Right_Type)
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
--  NMEA_Left_Right
----------------------------------------------------
procedure Populate (Val : NMEA_Left_Right; Target : in out JSON_Value) is
begin
   Set_Field (Target, "Data", Create (Val.Data));
end;

------------
-- Create --
------------

function Create (Val : NMEA_Left_Right) return JSON_Value is
begin
   return Ret : JSON_Value := Create_Object do
      Populate (Val, Ret);
   end return;
end Create;

---------
-- Get --
---------

function Get (Val : GNATCOLL.JSON.JSON_Value) return NMEA_Left_Right is
begin
   return Ret : NMEA_Left_Right do
      Map (Val, Ret);
   end return;
end Get;

---------
-- Get --
---------

function Get
  (Val   : JSON_Value;
   Field : UTF8_String)
      return NMEA_Left_Right
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
   Field      : NMEA_Left_Right)
is
begin
   Set_Field (Val, Field_Name, Create (Field));
end Set_Field;

---------------
-- Map_Field --
---------------
procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out NMEA_Left_Right) is
begin
   if Name = "Data" then
      To.Data := Get (Value);
   else
      null;
   end if;
end;

---------
-- Map --
---------
procedure Map
  (Val : JSON_Value;
   To  : in out NMEA_Left_Right)
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
--  UTC_Date_Type
----------------------------------------------------
procedure Populate (Val : UTC_Date_Type; Target : in out JSON_Value) is
begin
   Set_Field (Target, "Data", Create (Val.Data));
end;

------------
-- Create --
------------

function Create (Val : UTC_Date_Type) return JSON_Value is
begin
   return Ret : JSON_Value := Create_Object do
      Populate (Val, Ret);
   end return;
end Create;

---------
-- Get --
---------

function Get (Val : GNATCOLL.JSON.JSON_Value) return UTC_Date_Type is
begin
   return Ret : UTC_Date_Type do
      Map (Val, Ret);
   end return;
end Get;

---------
-- Get --
---------

function Get
  (Val   : JSON_Value;
   Field : UTF8_String)
      return UTC_Date_Type
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
   Field      : UTC_Date_Type)
is
begin
   Set_Field (Val, Field_Name, Create (Field));
end Set_Field;

---------------
-- Map_Field --
---------------
procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out UTC_Date_Type) is
begin
   if Name = "Data" then
      To.Data := Get (Value);
   else
      null;
   end if;
end;

---------
-- Map --
---------
procedure Map
  (Val : JSON_Value;
   To  : in out UTC_Date_Type)
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
--  Nautical_Mile_Type
----------------------------------------------------
procedure Populate (Val : Nautical_Mile_Type; Target : in out JSON_Value) is
begin
end;

------------
-- Create --
------------

function Create (Val : Nautical_Mile_Type) return JSON_Value is
begin
   return Ret : JSON_Value := Create_Object do
      Populate (Val, Ret);
   end return;
end Create;

---------
-- Get --
---------

function Get (Val : GNATCOLL.JSON.JSON_Value) return Nautical_Mile_Type is
begin
   return Ret : Nautical_Mile_Type do
      Map (Val, Ret);
   end return;
end Get;

---------
-- Get --
---------

function Get
  (Val   : JSON_Value;
   Field : UTF8_String)
      return Nautical_Mile_Type
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
   Field      : Nautical_Mile_Type)
is
begin
   Set_Field (Val, Field_Name, Create (Field));
end Set_Field;

---------------
-- Map_Field --
---------------
procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out Nautical_Mile_Type) is
begin
   E
   null;
end if;
end;

---------
-- Map --
---------
procedure Map
  (Val : JSON_Value;
   To  : in out Nautical_Mile_Type)
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
--  Knots_Type
----------------------------------------------------
procedure Populate (Val : Knots_Type; Target : in out JSON_Value) is
begin
end;

------------
-- Create --
------------

function Create (Val : Knots_Type) return JSON_Value is
begin
   return Ret : JSON_Value := Create_Object do
      Populate (Val, Ret);
   end return;
end Create;

---------
-- Get --
---------

function Get (Val : GNATCOLL.JSON.JSON_Value) return Knots_Type is
begin
   return Ret : Knots_Type do
      Map (Val, Ret);
   end return;
end Get;

---------
-- Get --
---------

function Get
  (Val   : JSON_Value;
   Field : UTF8_String)
      return Knots_Type
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
   Field      : Knots_Type)
is
begin
   Set_Field (Val, Field_Name, Create (Field));
end Set_Field;

---------------
-- Map_Field --
---------------
procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out Knots_Type) is
begin
   E
   null;
end if;
end;

---------
-- Map --
---------
procedure Map
  (Val : JSON_Value;
   To  : in out Knots_Type)
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
--  KmH_Type
----------------------------------------------------
procedure Populate (Val : KmH_Type; Target : in out JSON_Value) is
begin
end;

------------
-- Create --
------------

function Create (Val : KmH_Type) return JSON_Value is
begin
   return Ret : JSON_Value := Create_Object do
      Populate (Val, Ret);
   end return;
end Create;

---------
-- Get --
---------

function Get (Val : GNATCOLL.JSON.JSON_Value) return KmH_Type is
begin
   return Ret : KmH_Type do
      Map (Val, Ret);
   end return;
end Get;

---------
-- Get --
---------

function Get
  (Val   : JSON_Value;
   Field : UTF8_String)
      return KmH_Type
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
   Field      : KmH_Type)
is
begin
   Set_Field (Val, Field_Name, Create (Field));
end Set_Field;

---------------
-- Map_Field --
---------------
procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out KmH_Type) is
begin
   E
   null;
end if;
end;

---------
-- Map --
---------
procedure Map
  (Val : JSON_Value;
   To  : in out KmH_Type)
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
--  Heading_Type
----------------------------------------------------
procedure Populate (Val : Heading_Type; Target : in out JSON_Value) is
begin
end;

------------
-- Create --
------------

function Create (Val : Heading_Type) return JSON_Value is
begin
   return Ret : JSON_Value := Create_Object do
      Populate (Val, Ret);
   end return;
end Create;

---------
-- Get --
---------

function Get (Val : GNATCOLL.JSON.JSON_Value) return Heading_Type is
begin
   return Ret : Heading_Type do
      Map (Val, Ret);
   end return;
end Get;

---------
-- Get --
---------

function Get
  (Val   : JSON_Value;
   Field : UTF8_String)
      return Heading_Type
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
   Field      : Heading_Type)
is
begin
   Set_Field (Val, Field_Name, Create (Field));
end Set_Field;

---------------
-- Map_Field --
---------------
procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out Heading_Type) is
begin
   E
   null;
end if;
end;

---------
-- Map --
---------
procedure Map
  (Val : JSON_Value;
   To  : in out Heading_Type)
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
--  Magnetic_Variation_Type
----------------------------------------------------
procedure Populate (Val : Magnetic_Variation_Type; Target : in out JSON_Value) is
begin
end;

------------
-- Create --
------------

function Create (Val : Magnetic_Variation_Type) return JSON_Value is
begin
   return Ret : JSON_Value := Create_Object do
      Populate (Val, Ret);
   end return;
end Create;

---------
-- Get --
---------

function Get (Val : GNATCOLL.JSON.JSON_Value) return Magnetic_Variation_Type is
begin
   return Ret : Magnetic_Variation_Type do
      Map (Val, Ret);
   end return;
end Get;

---------
-- Get --
---------

function Get
  (Val   : JSON_Value;
   Field : UTF8_String)
      return Magnetic_Variation_Type
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
   Field      : Magnetic_Variation_Type)
is
begin
   Set_Field (Val, Field_Name, Create (Field));
end Set_Field;

---------------
-- Map_Field --
---------------
procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out Magnetic_Variation_Type) is
begin
   E
   null;
end if;
end;

---------
-- Map --
---------
procedure Map
  (Val : JSON_Value;
   To  : in out Magnetic_Variation_Type)
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
--  NMEA_Constant_Character
----------------------------------------------------
procedure Populate (Val : NMEA_Constant_Character; Target : in out JSON_Value) is
begin
end;

------------
-- Create --
------------

function Create (Val : NMEA_Constant_Character) return JSON_Value is
begin
   return Ret : JSON_Value := Create_Object do
      Populate (Val, Ret);
   end return;
end Create;

---------
-- Get --
---------

function Get (Val : GNATCOLL.JSON.JSON_Value) return NMEA_Constant_Character is
begin
   return Ret : NMEA_Constant_Character do
      Map (Val, Ret);
   end return;
end Get;

---------
-- Get --
---------

function Get
  (Val   : JSON_Value;
   Field : UTF8_String)
      return NMEA_Constant_Character
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
   Field      : NMEA_Constant_Character)
is
begin
   Set_Field (Val, Field_Name, Create (Field));
end Set_Field;

---------------
-- Map_Field --
---------------
procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out NMEA_Constant_Character) is
begin
   E
   null;
end if;
end;

---------
-- Map --
---------
procedure Map
  (Val : JSON_Value;
   To  : in out NMEA_Constant_Character)
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
--  NMEA_Boolean
----------------------------------------------------
procedure Populate (Val : NMEA_Boolean; Target : in out JSON_Value) is
begin
   Set_Field (Target, "Value", Create (Val.Value));
end;

------------
-- Create --
------------

function Create (Val : NMEA_Boolean) return JSON_Value is
begin
   return Ret : JSON_Value := Create_Object do
      Populate (Val, Ret);
   end return;
end Create;

---------
-- Get --
---------

function Get (Val : GNATCOLL.JSON.JSON_Value) return NMEA_Boolean is
begin
   return Ret : NMEA_Boolean do
      Map (Val, Ret);
   end return;
end Get;

---------
-- Get --
---------

function Get
  (Val   : JSON_Value;
   Field : UTF8_String)
      return NMEA_Boolean
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
   Field      : NMEA_Boolean)
is
begin
   Set_Field (Val, Field_Name, Create (Field));
end Set_Field;

---------------
-- Map_Field --
---------------
procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out NMEA_Boolean) is
begin
   if Name = "Value" then
      To.Value := Get (Value);
   else
      null;
   end if;
end;

---------
-- Map --
---------
procedure Map
  (Val : JSON_Value;
   To  : in out NMEA_Boolean)
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
--  NMEA_Hex_Value
----------------------------------------------------
procedure Populate (Val : NMEA_Hex_Value; Target : in out JSON_Value) is
begin
   Set_Field (Target, "Value", Create (Val.Value));
end;

------------
-- Create --
------------

function Create (Val : NMEA_Hex_Value) return JSON_Value is
begin
   return Ret : JSON_Value := Create_Object do
      Populate (Val, Ret);
   end return;
end Create;

---------
-- Get --
---------

function Get (Val : GNATCOLL.JSON.JSON_Value) return NMEA_Hex_Value is
begin
   return Ret : NMEA_Hex_Value do
      Map (Val, Ret);
   end return;
end Get;

---------
-- Get --
---------

function Get
  (Val   : JSON_Value;
   Field : UTF8_String)
      return NMEA_Hex_Value
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
   Field      : NMEA_Hex_Value)
is
begin
   Set_Field (Val, Field_Name, Create (Field));
end Set_Field;

---------------
-- Map_Field --
---------------
procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out NMEA_Hex_Value) is
begin
   if Name = "Value" then
      To.Value := Get (Value);
   else
      null;
   end if;
end;

---------
-- Map --
---------
procedure Map
  (Val : JSON_Value;
   To  : in out NMEA_Hex_Value)
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
--  NMEA_Waypoint_ID
----------------------------------------------------
procedure Populate (Val : NMEA_Waypoint_ID; Target : in out JSON_Value) is
begin
end;

------------
-- Create --
------------

function Create (Val : NMEA_Waypoint_ID) return JSON_Value is
begin
   return Ret : JSON_Value := Create_Object do
      Populate (Val, Ret);
   end return;
end Create;

---------
-- Get --
---------

function Get (Val : GNATCOLL.JSON.JSON_Value) return NMEA_Waypoint_ID is
begin
   return Ret : NMEA_Waypoint_ID do
      Map (Val, Ret);
   end return;
end Get;

---------
-- Get --
---------

function Get
  (Val   : JSON_Value;
   Field : UTF8_String)
      return NMEA_Waypoint_ID
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
   Field      : NMEA_Waypoint_ID)
is
begin
   Set_Field (Val, Field_Name, Create (Field));
end Set_Field;

---------------
-- Map_Field --
---------------
procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out NMEA_Waypoint_ID) is
begin
   E
   null;
end if;
end;

---------
-- Map --
---------
procedure Map
  (Val : JSON_Value;
   To  : in out NMEA_Waypoint_ID)
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
--  NMEA_Dummy_Field
----------------------------------------------------
procedure Populate (Val : NMEA_Dummy_Field; Target : in out JSON_Value) is
begin
end;

------------
-- Create --
------------

function Create (Val : NMEA_Dummy_Field) return JSON_Value is
begin
   return Ret : JSON_Value := Create_Object do
      Populate (Val, Ret);
   end return;
end Create;

---------
-- Get --
---------

function Get (Val : GNATCOLL.JSON.JSON_Value) return NMEA_Dummy_Field is
begin
   return Ret : NMEA_Dummy_Field do
      Map (Val, Ret);
   end return;
end Get;

---------
-- Get --
---------

function Get
  (Val   : JSON_Value;
   Field : UTF8_String)
      return NMEA_Dummy_Field
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
   Field      : NMEA_Dummy_Field)
is
begin
   Set_Field (Val, Field_Name, Create (Field));
end Set_Field;

---------------
-- Map_Field --
---------------
procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out NMEA_Dummy_Field) is
begin
   E
   null;
end if;
end;

---------
-- Map --
---------
procedure Map
  (Val : JSON_Value;
   To  : in out NMEA_Dummy_Field)
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
--  NMEA_Waypoint_ID_Access
----------------------------------------------------
procedure Populate (Val : NMEA_Waypoint_ID_Access; Target : in out JSON_Value) is
begin
end;

------------
-- Create --
------------

function Create (Val : NMEA_Waypoint_ID_Access) return JSON_Value is
begin
   return Ret : JSON_Value := Create_Object do
      Populate (Val, Ret);
   end return;
end Create;

---------
-- Get --
---------

function Get (Val : GNATCOLL.JSON.JSON_Value) return NMEA_Waypoint_ID_Access is
begin
   return Ret : NMEA_Waypoint_ID_Access do
      Map (Val, Ret);
   end return;
end Get;

---------
-- Get --
---------

function Get
  (Val   : JSON_Value;
   Field : UTF8_String)
      return NMEA_Waypoint_ID_Access
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
   Field      : NMEA_Waypoint_ID_Access)
is
begin
   Set_Field (Val, Field_Name, Create (Field));
end Set_Field;

---------------
-- Map_Field --
---------------
procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out NMEA_Waypoint_ID_Access) is
begin
   E
   null;
end if;
end;

---------
-- Map --
---------
procedure Map
  (Val : JSON_Value;
   To  : in out NMEA_Waypoint_ID_Access)
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
--  Waypoint_Array
----------------------------------------------------
procedure Populate (Val : Waypoint_Array; Target : in out JSON_Value) is
begin
end;

------------
-- Create --
------------

function Create (Val : Waypoint_Array) return JSON_Value is
begin
   return Ret : JSON_Value := Create_Object do
      Populate (Val, Ret);
   end return;
end Create;

---------
-- Get --
---------

function Get (Val : GNATCOLL.JSON.JSON_Value) return Waypoint_Array is
begin
   return Ret : Waypoint_Array do
      Map (Val, Ret);
   end return;
end Get;

---------
-- Get --
---------

function Get
  (Val   : JSON_Value;
   Field : UTF8_String)
      return Waypoint_Array
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
   Field      : Waypoint_Array)
is
begin
   Set_Field (Val, Field_Name, Create (Field));
end Set_Field;

---------------
-- Map_Field --
---------------
procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out Waypoint_Array) is
begin
   E
   null;
end if;
end;

---------
-- Map --
---------
procedure Map
  (Val : JSON_Value;
   To  : in out Waypoint_Array)
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
--  Waypoint_Array_Access
----------------------------------------------------
procedure Populate (Val : Waypoint_Array_Access; Target : in out JSON_Value) is
begin
end;

------------
-- Create --
------------

function Create (Val : Waypoint_Array_Access) return JSON_Value is
begin
   return Ret : JSON_Value := Create_Object do
      Populate (Val, Ret);
   end return;
end Create;

---------
-- Get --
---------

function Get (Val : GNATCOLL.JSON.JSON_Value) return Waypoint_Array_Access is
begin
   return Ret : Waypoint_Array_Access do
      Map (Val, Ret);
   end return;
end Get;

---------
-- Get --
---------

function Get
  (Val   : JSON_Value;
   Field : UTF8_String)
      return Waypoint_Array_Access
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
   Field      : Waypoint_Array_Access)
is
begin
   Set_Field (Val, Field_Name, Create (Field));
end Set_Field;

---------------
-- Map_Field --
---------------
procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out Waypoint_Array_Access) is
begin
   E
   null;
end if;
end;

---------
-- Map --
---------
procedure Map
  (Val : JSON_Value;
   To  : in out Waypoint_Array_Access)
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
--  NMEA_Waypoints
----------------------------------------------------
procedure Populate (Val : NMEA_Waypoints; Target : in out JSON_Value) is
begin
   Set_Field (Target, "Value", Create (Val.Value));
end;

------------
-- Create --
------------

function Create (Val : NMEA_Waypoints) return JSON_Value is
begin
   return Ret : JSON_Value := Create_Object do
      Populate (Val, Ret);
   end return;
end Create;

---------
-- Get --
---------

function Get (Val : GNATCOLL.JSON.JSON_Value) return NMEA_Waypoints is
begin
   return Ret : NMEA_Waypoints do
      Map (Val, Ret);
   end return;
end Get;

---------
-- Get --
---------

function Get
  (Val   : JSON_Value;
   Field : UTF8_String)
      return NMEA_Waypoints
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
   Field      : NMEA_Waypoints)
is
begin
   Set_Field (Val, Field_Name, Create (Field));
end Set_Field;

---------------
-- Map_Field --
---------------
procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out NMEA_Waypoints) is
begin
   if Name = "Value" then
      To.Value := Get (Value);
   else
      null;
   end if;
end;

---------
-- Map --
---------
procedure Map
  (Val : JSON_Value;
   To  : in out NMEA_Waypoints)
is
   procedure Process (Name : UTF8_String; Value : JSON_Value);
   procedure Process (Name : UTF8_String; Value : JSON_Value) is
   begin
      Map_Field (Name, Value, To);
   end;
begin
   Map_JSON_Object (Val, Process'Access);
end Map;

end NMEA.Messages.JSON;
