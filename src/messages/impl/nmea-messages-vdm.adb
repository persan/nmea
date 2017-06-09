with Ada.Streams; use Ada.Streams;
package body NMEA.Messages.VDM is

   type Mapper (Part : Boolean := False) is record
      case Part is
         when True => As_Stream_Element_Array : Ada.Streams.Stream_Element_Array (1 .. 64);
         when False => As_Six_Bits_Array      : Six_Bits_Array (1 .. 64);
      end case;
   end record with Unchecked_Union => True;


   function String_To_Binary (Value : String; Filler : Integer) return Ada.Streams.Stream_Element_Array is
      pragma Unreferenced (Filler);
      Map    : Mapper;
      Cursor : Natural := Map.As_Six_Bits_Array'First;
      Last   : constant Stream_Element_Offset := 1;
   begin
      for I of Value loop
         Map.As_Six_Bits_Array (Cursor) := Character_2_Six_Bits (I);
         Cursor := Cursor + 1;
      end loop;
      return Map.As_Stream_Element_Array (1 .. Last);
   end;

   -----------------
   -- Constructor --
   -----------------

   overriding function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return VDM_Message
   is

   begin
      return Result : VDM_Message do
         VDM_Message'Read (Stream, Result);
      end return;
   end Constructor;

   overriding function Image (This : VDM_Message) return String is separate;

begin
   Register ("VDM", VDM_Message'Tag);
end NMEA.Messages.VDM;
