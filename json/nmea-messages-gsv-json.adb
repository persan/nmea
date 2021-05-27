with NMEA.Messages.JSON; pragma Warnings (Off, NMEA.Messages.JSON);
with NMEA.JSON; pragma Warnings (Off, NMEA.JSON);

package body NMEA.Messages.GSV.JSON is
   use NMEA.Messages.JSON;
   use NMEA.JSON;


   ----------------------------------------------------
   --  GSV_Message
   ----------------------------------------------------
   procedure Populate (Val : GSV_Message; Target : in out JSON_Value) is
   begin
      Set_Field (Target, "total_number_of_GSV_messages_to_be_transmitted_in_this_group", Create (Val.total_number_of_GSV_messages_to_be_transmitted_in_this_group));
      Set_Field (Target, "origin_number_of_this_GSV_message_within_current_group", Create (Val.origin_number_of_this_GSV_message_within_current_group));
      Set_Field (Target, "total_number_of_satellites_in_view_leading_zeros_sent", Create (Val.total_number_of_satellites_in_view_leading_zeros_sent));
      Set_Field (Target, "satellite_PRN_number_leading_zeros_sent", Create (Val.satellite_PRN_number_leading_zeros_sent));
      Set_Field (Target, "elevation_in_degrees_00_90_leading_zeros_sent", Create (Val.elevation_in_degrees_00_90_leading_zeros_sent));
      Set_Field (Target, "azimuth_in_degrees_to_true_north_000_359_leading_zeros_sent", Create (Val.azimuth_in_degrees_to_true_north_000_359_leading_zeros_sent));
      Set_Field (Target, "SNR_in_dB_00_99_leading_zeros_sent_more_satellite_info_quadruples_like_4_7", Create (Val.SNR_in_dB_00_99_leading_zeros_sent_more_satellite_info_quadruples_like_4_7));
   end;

   ------------
   -- Create --
   ------------

   function Create (Val : GSV_Message) return JSON_Value is
   begin
      return Ret : JSON_Value := Create_Object do
         Populate (Val, Ret);
      end return;
   end Create;

   ---------
   -- Get --
   ---------

   function Get (Val : GNATCOLL.JSON.JSON_Value) return GSV_Message is
   begin
      return Ret : GSV_Message do
         Map (Val, Ret);
      end return;
   end Get;

   ---------
   -- Get --
   ---------

   function Get
     (Val   : JSON_Value;
      Field : UTF8_String)
      return GSV_Message
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
      Field      : GSV_Message)
   is
   begin
      Set_Field (Val, Field_Name, Create (Field));
   end Set_Field;

   ---------------
   -- Map_Field --
   ---------------
   procedure Map_Field (Name : UTF8_String; Value : JSON_Value; To : in out GSV_Message) is
   begin
      if Name = "total_number_of_GSV_messages_to_be_transmitted_in_this_group" then
         To.total_number_of_GSV_messages_to_be_transmitted_in_this_group := Get (Value);
      elsif Name = "origin_number_of_this_GSV_message_within_current_group" then
         To.origin_number_of_this_GSV_message_within_current_group := Get (Value);
      elsif Name = "total_number_of_satellites_in_view_leading_zeros_sent" then
         To.total_number_of_satellites_in_view_leading_zeros_sent := Get (Value);
      elsif Name = "satellite_PRN_number_leading_zeros_sent" then
         To.satellite_PRN_number_leading_zeros_sent := Get (Value);
      elsif Name = "elevation_in_degrees_00_90_leading_zeros_sent" then
         To.elevation_in_degrees_00_90_leading_zeros_sent := Get (Value);
      elsif Name = "azimuth_in_degrees_to_true_north_000_359_leading_zeros_sent" then
         To.azimuth_in_degrees_to_true_north_000_359_leading_zeros_sent := Get (Value);
      elsif Name = "SNR_in_dB_00_99_leading_zeros_sent_more_satellite_info_quadruples_like_4_7" then
         To.SNR_in_dB_00_99_leading_zeros_sent_more_satellite_info_quadruples_like_4_7 := Get (Value);
      else
         Map_Field (Name, Value, Message (To));
      end if;
   end;

   ---------
   -- Map --
   ---------
   procedure Map
     (Val : JSON_Value;
      To  : in out GSV_Message)
   is
      procedure Process (Name : UTF8_String; Value : JSON_Value);
      procedure Process (Name : UTF8_String; Value : JSON_Value) is
      begin
         Map_Field (Name, Value, To);
      end;
   begin
      Map_JSON_Object (Val, Process'Access);
   end Map;

end NMEA.Messages.GSV.JSON;
