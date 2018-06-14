with GNATCOLL.JSON;

package NMEA.Messages.JSON is
   use GNATCOLL.JSON;

   ----------------------------------------------------
   --  Message
   ---------------------------------------------------

   function Create (Val : Message) return JSON_Value;

   procedure Populate (Val : Message; Target : in out JSON_Value);

   procedure Set_Field  (Val        : JSON_Value;
                         Field_Name : UTF8_String;
                         Field      : Message);

   procedure Map (Val : JSON_Value;
                  To  : in out Message);

   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out Message);

   ----------------------------------------------------
   --  NMEA_Field
   ---------------------------------------------------

   function Create (Val : NMEA_Field) return JSON_Value;

   procedure Populate (Val : NMEA_Field; Target : in out JSON_Value);

   function Get (Val : GNATCOLL.JSON.JSON_Value) return NMEA_Field;

   function Get (Val   : JSON_Value;
                 Field : UTF8_String) return NMEA_Field;

   procedure Set_Field  (Val        : JSON_Value;
                         Field_Name : UTF8_String;
                         Field      : NMEA_Field);

   procedure Map (Val : JSON_Value;
                  To  : in out NMEA_Field);

   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out NMEA_Field);

   ----------------------------------------------------
   --  UTC_Time_Type
   ---------------------------------------------------

   function Create (Val : UTC_Time_Type) return JSON_Value;

   procedure Populate (Val : UTC_Time_Type; Target : in out JSON_Value);

   function Get (Val : GNATCOLL.JSON.JSON_Value) return UTC_Time_Type;

   function Get (Val   : JSON_Value;
                 Field : UTF8_String) return UTC_Time_Type;

   procedure Set_Field  (Val        : JSON_Value;
                         Field_Name : UTF8_String;
                         Field      : UTC_Time_Type);

   procedure Map (Val : JSON_Value;
                  To  : in out UTC_Time_Type);

   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out UTC_Time_Type);

   ----------------------------------------------------
   --  NMEA_Long_Float
   ---------------------------------------------------

   function Create (Val : NMEA_Long_Float) return JSON_Value;

   procedure Populate (Val : NMEA_Long_Float; Target : in out JSON_Value);

   function Get (Val : GNATCOLL.JSON.JSON_Value) return NMEA_Long_Float;

   function Get (Val   : JSON_Value;
                 Field : UTF8_String) return NMEA_Long_Float;

   procedure Set_Field  (Val        : JSON_Value;
                         Field_Name : UTF8_String;
                         Field      : NMEA_Long_Float);

   procedure Map (Val : JSON_Value;
                  To  : in out NMEA_Long_Float);

   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out NMEA_Long_Float);

   ----------------------------------------------------
   --  Nmea_Hight
   ---------------------------------------------------

   function Create (Val : Nmea_Hight) return JSON_Value;

   procedure Populate (Val : Nmea_Hight; Target : in out JSON_Value);

   function Get (Val : GNATCOLL.JSON.JSON_Value) return Nmea_Hight;

   function Get (Val   : JSON_Value;
                 Field : UTF8_String) return Nmea_Hight;

   procedure Set_Field  (Val        : JSON_Value;
                         Field_Name : UTF8_String;
                         Field      : Nmea_Hight);

   procedure Map (Val : JSON_Value;
                  To  : in out Nmea_Hight);

   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out Nmea_Hight);

   ----------------------------------------------------
   --  NMEA_Integer
   ---------------------------------------------------

   function Create (Val : NMEA_Integer) return JSON_Value;

   procedure Populate (Val : NMEA_Integer; Target : in out JSON_Value);

   function Get (Val : GNATCOLL.JSON.JSON_Value) return NMEA_Integer;

   function Get (Val   : JSON_Value;
                 Field : UTF8_String) return NMEA_Integer;

   procedure Set_Field  (Val        : JSON_Value;
                         Field_Name : UTF8_String;
                         Field      : NMEA_Integer);

   procedure Map (Val : JSON_Value;
                  To  : in out NMEA_Integer);

   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out NMEA_Integer);

   ----------------------------------------------------
   --  NMEA_String
   ---------------------------------------------------

   function Create (Val : NMEA_String) return JSON_Value;

   procedure Populate (Val : NMEA_String; Target : in out JSON_Value);

   function Get (Val : GNATCOLL.JSON.JSON_Value) return NMEA_String;

   function Get (Val   : JSON_Value;
                 Field : UTF8_String) return NMEA_String;

   procedure Set_Field  (Val        : JSON_Value;
                         Field_Name : UTF8_String;
                         Field      : NMEA_String);

   procedure Map (Val : JSON_Value;
                  To  : in out NMEA_String);

   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out NMEA_String);

   ----------------------------------------------------
   --  Latitude_Type
   ---------------------------------------------------

   function Create (Val : Latitude_Type) return JSON_Value;

   procedure Populate (Val : Latitude_Type; Target : in out JSON_Value);

   function Get (Val : GNATCOLL.JSON.JSON_Value) return Latitude_Type;

   function Get (Val   : JSON_Value;
                 Field : UTF8_String) return Latitude_Type;

   procedure Set_Field  (Val        : JSON_Value;
                         Field_Name : UTF8_String;
                         Field      : Latitude_Type);

   procedure Map (Val : JSON_Value;
                  To  : in out Latitude_Type);

   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out Latitude_Type);

   ----------------------------------------------------
   --  Longitude_Type
   ---------------------------------------------------

   function Create (Val : Longitude_Type) return JSON_Value;

   procedure Populate (Val : Longitude_Type; Target : in out JSON_Value);

   function Get (Val : GNATCOLL.JSON.JSON_Value) return Longitude_Type;

   function Get (Val   : JSON_Value;
                 Field : UTF8_String) return Longitude_Type;

   procedure Set_Field  (Val        : JSON_Value;
                         Field_Name : UTF8_String;
                         Field      : Longitude_Type);

   procedure Map (Val : JSON_Value;
                  To  : in out Longitude_Type);

   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out Longitude_Type);

   ----------------------------------------------------
   --  Fix_Quality_Type
   ---------------------------------------------------

   function Create (Val : Fix_Quality_Type) return JSON_Value;

   procedure Populate (Val : Fix_Quality_Type; Target : in out JSON_Value);

   function Get (Val : GNATCOLL.JSON.JSON_Value) return Fix_Quality_Type;

   function Get (Val   : JSON_Value;
                 Field : UTF8_String) return Fix_Quality_Type;

   procedure Set_Field  (Val        : JSON_Value;
                         Field_Name : UTF8_String;
                         Field      : Fix_Quality_Type);

   procedure Map (Val : JSON_Value;
                  To  : in out Fix_Quality_Type);

   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out Fix_Quality_Type);

   ----------------------------------------------------
   --  Count
   ---------------------------------------------------

   function Create (Val : Count) return JSON_Value;

   procedure Populate (Val : Count; Target : in out JSON_Value);

   function Get (Val : GNATCOLL.JSON.JSON_Value) return Count;

   function Get (Val   : JSON_Value;
                 Field : UTF8_String) return Count;

   procedure Set_Field  (Val        : JSON_Value;
                         Field_Name : UTF8_String;
                         Field      : Count);

   procedure Map (Val : JSON_Value;
                  To  : in out Count);

   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out Count);

   ----------------------------------------------------
   --  Waypoint_ID
   ---------------------------------------------------

   function Create (Val : Waypoint_ID) return JSON_Value;

   procedure Populate (Val : Waypoint_ID; Target : in out JSON_Value);

   function Get (Val : GNATCOLL.JSON.JSON_Value) return Waypoint_ID;

   function Get (Val   : JSON_Value;
                 Field : UTF8_String) return Waypoint_ID;

   procedure Set_Field  (Val        : JSON_Value;
                         Field_Name : UTF8_String;
                         Field      : Waypoint_ID);

   procedure Map (Val : JSON_Value;
                  To  : in out Waypoint_ID);

   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out Waypoint_ID);

   ----------------------------------------------------
   --  Dilution
   ---------------------------------------------------

   function Create (Val : Dilution) return JSON_Value;

   procedure Populate (Val : Dilution; Target : in out JSON_Value);

   function Get (Val : GNATCOLL.JSON.JSON_Value) return Dilution;

   function Get (Val   : JSON_Value;
                 Field : UTF8_String) return Dilution;

   procedure Set_Field  (Val        : JSON_Value;
                         Field_Name : UTF8_String;
                         Field      : Dilution);

   procedure Map (Val : JSON_Value;
                  To  : in out Dilution);

   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out Dilution);

   ----------------------------------------------------
   --  Meters
   ---------------------------------------------------

   function Create (Val : Meters) return JSON_Value;

   procedure Populate (Val : Meters; Target : in out JSON_Value);

   function Get (Val : GNATCOLL.JSON.JSON_Value) return Meters;

   function Get (Val   : JSON_Value;
                 Field : UTF8_String) return Meters;

   procedure Set_Field  (Val        : JSON_Value;
                         Field_Name : UTF8_String;
                         Field      : Meters);

   procedure Map (Val : JSON_Value;
                  To  : in out Meters);

   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out Meters);

   ----------------------------------------------------
   --  NMEA_Seconds
   ---------------------------------------------------

   function Create (Val : NMEA_Seconds) return JSON_Value;

   procedure Populate (Val : NMEA_Seconds; Target : in out JSON_Value);

   function Get (Val : GNATCOLL.JSON.JSON_Value) return NMEA_Seconds;

   function Get (Val   : JSON_Value;
                 Field : UTF8_String) return NMEA_Seconds;

   procedure Set_Field  (Val        : JSON_Value;
                         Field_Name : UTF8_String;
                         Field      : NMEA_Seconds);

   procedure Map (Val : JSON_Value;
                  To  : in out NMEA_Seconds);

   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out NMEA_Seconds);

   ----------------------------------------------------
   --  DGPS_Station_ID
   ---------------------------------------------------

   function Create (Val : DGPS_Station_ID) return JSON_Value;

   procedure Populate (Val : DGPS_Station_ID; Target : in out JSON_Value);

   function Get (Val : GNATCOLL.JSON.JSON_Value) return DGPS_Station_ID;

   function Get (Val   : JSON_Value;
                 Field : UTF8_String) return DGPS_Station_ID;

   procedure Set_Field  (Val        : JSON_Value;
                         Field_Name : UTF8_String;
                         Field      : DGPS_Station_ID);

   procedure Map (Val : JSON_Value;
                  To  : in out DGPS_Station_ID);

   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out DGPS_Station_ID);

   ----------------------------------------------------
   --  NMEA_Status_Type
   ---------------------------------------------------

   function Create (Val : NMEA_Status_Type) return JSON_Value;

   procedure Populate (Val : NMEA_Status_Type; Target : in out JSON_Value);

   function Get (Val : GNATCOLL.JSON.JSON_Value) return NMEA_Status_Type;

   function Get (Val   : JSON_Value;
                 Field : UTF8_String) return NMEA_Status_Type;

   procedure Set_Field  (Val        : JSON_Value;
                         Field_Name : UTF8_String;
                         Field      : NMEA_Status_Type);

   procedure Map (Val : JSON_Value;
                  To  : in out NMEA_Status_Type);

   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out NMEA_Status_Type);

   ----------------------------------------------------
   --  NMEA_Status
   ---------------------------------------------------

   function Create (Val : NMEA_Status) return JSON_Value;

   procedure Populate (Val : NMEA_Status; Target : in out JSON_Value);

   function Get (Val : GNATCOLL.JSON.JSON_Value) return NMEA_Status;

   function Get (Val   : JSON_Value;
                 Field : UTF8_String) return NMEA_Status;

   procedure Set_Field  (Val        : JSON_Value;
                         Field_Name : UTF8_String;
                         Field      : NMEA_Status);

   procedure Map (Val : JSON_Value;
                  To  : in out NMEA_Status);

   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out NMEA_Status);

   ----------------------------------------------------
   --  NMEA_Left_Right_Type
   ---------------------------------------------------

   function Create (Val : NMEA_Left_Right_Type) return JSON_Value;

   procedure Populate (Val : NMEA_Left_Right_Type; Target : in out JSON_Value);

   function Get (Val : GNATCOLL.JSON.JSON_Value) return NMEA_Left_Right_Type;

   function Get (Val   : JSON_Value;
                 Field : UTF8_String) return NMEA_Left_Right_Type;

   procedure Set_Field  (Val        : JSON_Value;
                         Field_Name : UTF8_String;
                         Field      : NMEA_Left_Right_Type);

   procedure Map (Val : JSON_Value;
                  To  : in out NMEA_Left_Right_Type);

   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out NMEA_Left_Right_Type);

   ----------------------------------------------------
   --  NMEA_Left_Right
   ---------------------------------------------------

   function Create (Val : NMEA_Left_Right) return JSON_Value;

   procedure Populate (Val : NMEA_Left_Right; Target : in out JSON_Value);

   function Get (Val : GNATCOLL.JSON.JSON_Value) return NMEA_Left_Right;

   function Get (Val   : JSON_Value;
                 Field : UTF8_String) return NMEA_Left_Right;

   procedure Set_Field  (Val        : JSON_Value;
                         Field_Name : UTF8_String;
                         Field      : NMEA_Left_Right);

   procedure Map (Val : JSON_Value;
                  To  : in out NMEA_Left_Right);

   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out NMEA_Left_Right);

   ----------------------------------------------------
   --  UTC_Date_Type
   ---------------------------------------------------

   function Create (Val : UTC_Date_Type) return JSON_Value;

   procedure Populate (Val : UTC_Date_Type; Target : in out JSON_Value);

   function Get (Val : GNATCOLL.JSON.JSON_Value) return UTC_Date_Type;

   function Get (Val   : JSON_Value;
                 Field : UTF8_String) return UTC_Date_Type;

   procedure Set_Field  (Val        : JSON_Value;
                         Field_Name : UTF8_String;
                         Field      : UTC_Date_Type);

   procedure Map (Val : JSON_Value;
                  To  : in out UTC_Date_Type);

   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out UTC_Date_Type);

   ----------------------------------------------------
   --  Nautical_Mile_Type
   ---------------------------------------------------

   function Create (Val : Nautical_Mile_Type) return JSON_Value;

   procedure Populate (Val : Nautical_Mile_Type; Target : in out JSON_Value);

   function Get (Val : GNATCOLL.JSON.JSON_Value) return Nautical_Mile_Type;

   function Get (Val   : JSON_Value;
                 Field : UTF8_String) return Nautical_Mile_Type;

   procedure Set_Field  (Val        : JSON_Value;
                         Field_Name : UTF8_String;
                         Field      : Nautical_Mile_Type);

   procedure Map (Val : JSON_Value;
                  To  : in out Nautical_Mile_Type);

   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out Nautical_Mile_Type);

   ----------------------------------------------------
   --  Knots_Type
   ---------------------------------------------------

   function Create (Val : Knots_Type) return JSON_Value;

   procedure Populate (Val : Knots_Type; Target : in out JSON_Value);

   function Get (Val : GNATCOLL.JSON.JSON_Value) return Knots_Type;

   function Get (Val   : JSON_Value;
                 Field : UTF8_String) return Knots_Type;

   procedure Set_Field  (Val        : JSON_Value;
                         Field_Name : UTF8_String;
                         Field      : Knots_Type);

   procedure Map (Val : JSON_Value;
                  To  : in out Knots_Type);

   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out Knots_Type);

   ----------------------------------------------------
   --  KmH_Type
   ---------------------------------------------------

   function Create (Val : KmH_Type) return JSON_Value;

   procedure Populate (Val : KmH_Type; Target : in out JSON_Value);

   function Get (Val : GNATCOLL.JSON.JSON_Value) return KmH_Type;

   function Get (Val   : JSON_Value;
                 Field : UTF8_String) return KmH_Type;

   procedure Set_Field  (Val        : JSON_Value;
                         Field_Name : UTF8_String;
                         Field      : KmH_Type);

   procedure Map (Val : JSON_Value;
                  To  : in out KmH_Type);

   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out KmH_Type);

   ----------------------------------------------------
   --  Heading_Type
   ---------------------------------------------------

   function Create (Val : Heading_Type) return JSON_Value;

   procedure Populate (Val : Heading_Type; Target : in out JSON_Value);

   function Get (Val : GNATCOLL.JSON.JSON_Value) return Heading_Type;

   function Get (Val   : JSON_Value;
                 Field : UTF8_String) return Heading_Type;

   procedure Set_Field  (Val        : JSON_Value;
                         Field_Name : UTF8_String;
                         Field      : Heading_Type);

   procedure Map (Val : JSON_Value;
                  To  : in out Heading_Type);

   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out Heading_Type);

   ----------------------------------------------------
   --  Magnetic_Variation_Type
   ---------------------------------------------------

   function Create (Val : Magnetic_Variation_Type) return JSON_Value;

   procedure Populate (Val : Magnetic_Variation_Type; Target : in out JSON_Value);

   function Get (Val : GNATCOLL.JSON.JSON_Value) return Magnetic_Variation_Type;

   function Get (Val   : JSON_Value;
                 Field : UTF8_String) return Magnetic_Variation_Type;

   procedure Set_Field  (Val        : JSON_Value;
                         Field_Name : UTF8_String;
                         Field      : Magnetic_Variation_Type);

   procedure Map (Val : JSON_Value;
                  To  : in out Magnetic_Variation_Type);

   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out Magnetic_Variation_Type);

   ----------------------------------------------------
   --  NMEA_Constant_Character
   ---------------------------------------------------

   function Create (Val : NMEA_Constant_Character) return JSON_Value;

   procedure Populate (Val : NMEA_Constant_Character; Target : in out JSON_Value);

   function Get (Val : GNATCOLL.JSON.JSON_Value) return NMEA_Constant_Character;

   function Get (Val   : JSON_Value;
                 Field : UTF8_String) return NMEA_Constant_Character;

   procedure Set_Field  (Val        : JSON_Value;
                         Field_Name : UTF8_String;
                         Field      : NMEA_Constant_Character);

   procedure Map (Val : JSON_Value;
                  To  : in out NMEA_Constant_Character);

   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out NMEA_Constant_Character);

   ----------------------------------------------------
   --  NMEA_Boolean
   ---------------------------------------------------

   function Create (Val : NMEA_Boolean) return JSON_Value;

   procedure Populate (Val : NMEA_Boolean; Target : in out JSON_Value);

   function Get (Val : GNATCOLL.JSON.JSON_Value) return NMEA_Boolean;

   function Get (Val   : JSON_Value;
                 Field : UTF8_String) return NMEA_Boolean;

   procedure Set_Field  (Val        : JSON_Value;
                         Field_Name : UTF8_String;
                         Field      : NMEA_Boolean);

   procedure Map (Val : JSON_Value;
                  To  : in out NMEA_Boolean);

   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out NMEA_Boolean);

   ----------------------------------------------------
   --  NMEA_Hex_Value
   ---------------------------------------------------

   function Create (Val : NMEA_Hex_Value) return JSON_Value;

   procedure Populate (Val : NMEA_Hex_Value; Target : in out JSON_Value);

   function Get (Val : GNATCOLL.JSON.JSON_Value) return NMEA_Hex_Value;

   function Get (Val   : JSON_Value;
                 Field : UTF8_String) return NMEA_Hex_Value;

   procedure Set_Field  (Val        : JSON_Value;
                         Field_Name : UTF8_String;
                         Field      : NMEA_Hex_Value);

   procedure Map (Val : JSON_Value;
                  To  : in out NMEA_Hex_Value);

   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out NMEA_Hex_Value);

   ----------------------------------------------------
   --  NMEA_Waypoint_ID
   ---------------------------------------------------

   function Create (Val : NMEA_Waypoint_ID) return JSON_Value;

   procedure Populate (Val : NMEA_Waypoint_ID; Target : in out JSON_Value);

   function Get (Val : GNATCOLL.JSON.JSON_Value) return NMEA_Waypoint_ID;

   function Get (Val   : JSON_Value;
                 Field : UTF8_String) return NMEA_Waypoint_ID;

   procedure Set_Field  (Val        : JSON_Value;
                         Field_Name : UTF8_String;
                         Field      : NMEA_Waypoint_ID);

   procedure Map (Val : JSON_Value;
                  To  : in out NMEA_Waypoint_ID);

   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out NMEA_Waypoint_ID);

   ----------------------------------------------------
   --  NMEA_Dummy_Field
   ---------------------------------------------------

   function Create (Val : NMEA_Dummy_Field) return JSON_Value;

   procedure Populate (Val : NMEA_Dummy_Field; Target : in out JSON_Value);

   function Get (Val : GNATCOLL.JSON.JSON_Value) return NMEA_Dummy_Field;

   function Get (Val   : JSON_Value;
                 Field : UTF8_String) return NMEA_Dummy_Field;

   procedure Set_Field  (Val        : JSON_Value;
                         Field_Name : UTF8_String;
                         Field      : NMEA_Dummy_Field);

   procedure Map (Val : JSON_Value;
                  To  : in out NMEA_Dummy_Field);

   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out NMEA_Dummy_Field);

   ----------------------------------------------------
   --  NMEA_Waypoint_ID_Access
   ---------------------------------------------------

   function Create (Val : NMEA_Waypoint_ID_Access) return JSON_Value;

   procedure Populate (Val : NMEA_Waypoint_ID_Access; Target : in out JSON_Value);

   function Get (Val : GNATCOLL.JSON.JSON_Value) return NMEA_Waypoint_ID_Access;

   function Get (Val   : JSON_Value;
                 Field : UTF8_String) return NMEA_Waypoint_ID_Access;

   procedure Set_Field  (Val        : JSON_Value;
                         Field_Name : UTF8_String;
                         Field      : NMEA_Waypoint_ID_Access);

   procedure Map (Val : JSON_Value;
                  To  : in out NMEA_Waypoint_ID_Access);

   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out NMEA_Waypoint_ID_Access);

   ----------------------------------------------------
   --  Waypoint_Array
   ---------------------------------------------------

   function Create (Val : Waypoint_Array) return JSON_Value;

   procedure Populate (Val : Waypoint_Array; Target : in out JSON_Value);

   function Get (Val : GNATCOLL.JSON.JSON_Value) return Waypoint_Array;

   function Get (Val   : JSON_Value;
                 Field : UTF8_String) return Waypoint_Array;

   procedure Set_Field  (Val        : JSON_Value;
                         Field_Name : UTF8_String;
                         Field      : Waypoint_Array);

   procedure Map (Val : JSON_Value;
                  To  : in out Waypoint_Array);

   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out Waypoint_Array);

   ----------------------------------------------------
   --  Waypoint_Array_Access
   ---------------------------------------------------

   function Create (Val : Waypoint_Array_Access) return JSON_Value;

   procedure Populate (Val : Waypoint_Array_Access; Target : in out JSON_Value);

   function Get (Val : GNATCOLL.JSON.JSON_Value) return Waypoint_Array_Access;

   function Get (Val   : JSON_Value;
                 Field : UTF8_String) return Waypoint_Array_Access;

   procedure Set_Field  (Val        : JSON_Value;
                         Field_Name : UTF8_String;
                         Field      : Waypoint_Array_Access);

   procedure Map (Val : JSON_Value;
                  To  : in out Waypoint_Array_Access);

   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out Waypoint_Array_Access);

   ----------------------------------------------------
   --  NMEA_Waypoints
   ---------------------------------------------------

   function Create (Val : NMEA_Waypoints) return JSON_Value;

   procedure Populate (Val : NMEA_Waypoints; Target : in out JSON_Value);

   function Get (Val : GNATCOLL.JSON.JSON_Value) return NMEA_Waypoints;

   function Get (Val   : JSON_Value;
                 Field : UTF8_String) return NMEA_Waypoints;

   procedure Set_Field  (Val        : JSON_Value;
                         Field_Name : UTF8_String;
                         Field      : NMEA_Waypoints);

   procedure Map (Val : JSON_Value;
                  To  : in out NMEA_Waypoints);

   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out NMEA_Waypoints);

end NMEA.Messages.JSON;
