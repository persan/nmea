
package NMEA.Messages.VDM.Message_Assemblers is
   type VDM_Lisner is limited interface;

   type Assembler (Listner : not null access VDM_Lisner'Class) is tagged private;
   procedure Add (Self : Assembler; Message : VDM_Message);

private
   MAX_MESSAGE_LENGTH : constant := 256;
   type Assembler (Listner : not null access VDM_Lisner'Class) is tagged record
      Buffer : Ada.Streams.Stream_Element_Array (1 .. MAX_MESSAGE_LENGTH);
      Cursor : Ada.Streams.Stream_Element_Offset := 1;
   end record;
end;
