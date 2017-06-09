
package NMEA.Messages.VDM.Message_Assemblers is
   type VDM_Lisner is limited interface;

   type Assembler (Listner : not null access VDM_Lisner'Class) is tagged private;
   procedure Add (Self : Assembler; Message : VDM_Message);

private
   type Assembler (Listner : not null access VDM_Lisner'Class) is tagged record
      null;
   end record;
end;
