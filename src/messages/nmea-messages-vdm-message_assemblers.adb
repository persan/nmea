package body NMEA.Messages.VDM.Message_Assemblers is

   type Six_Bits_Nible is range 0 .. 2#111_111# with Size => 6;
   type Nible_Array is array (Natural range <>) of Six_Bits_Nible with Pack => True;
   type Nible_To_Char_Map_Type is array (Six_Bits_Nible) of Character;

   Nible_To_Char_Map : Nible_To_Char_Map_Type :=
                         ("0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVW`abcdefghijklmnopqrstuvw");
   Char_To_Nible_Map : array (Character ) of Six_Bits_Nible := (others => 0);

   procedure Add (Self : Assembler; Message : VDM_Message) is
   begin
      null;
   end Add;

begin
   for I in Nible_To_Char_Map'Range loop
      Char_To_Nible_Map (Nible_To_Char_Map (I)) := I;
   end loop;
end NMEA.Messages.VDM.Message_Assemblers;
