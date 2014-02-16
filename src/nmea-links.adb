with GNAT.Calendar.Time_IO;
with System.Address_To_Access_Conversions;
with GNAT.IO; use GNAT.IO;
package body NMEA.Links is
   use Ada.Streams;
   ----------
   -- read --
   ----------
   START_OF_MESSAGE : constant Stream_Element := Character'Pos ('$');
   END_OF_MESSAGE   : constant Stream_Element := Character'Pos ('*');
   procedure Read
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
      Data   : out Nmea_Frame)
   is
   begin
      Data.Data := (others => Character'Pos ('#'));
      Data.N_Stream.In_Cursor := Data.Data'First;
      Data.Cursor := Data.Data'First;
      loop
         Stream_Element'Read (Stream, Data.Data (Data.Cursor));
         exit when Data.Data (Data.Cursor) = START_OF_MESSAGE;
      end loop;
      Data.Cursor := Data.Cursor + 1;
      Data.Time := Ada.Calendar.Clock;
      loop
         Stream_Element'Read (Stream, Data.Data (Data.Cursor));
         exit when Data.Data (Data.Cursor) = END_OF_MESSAGE;
         Data.Cursor := Data.Cursor + 1;
      end loop;
      Stream_Element'Read (Stream, Data.Data (Data.Cursor + 1));
      Stream_Element'Read (Stream, Data.Data (Data.Cursor + 2));
      Data.Cursor := Data.Cursor + 3;
      Data.N_Stream.Length := Data.Cursor - Data.Data'First;
      Data.N_Stream.In_Cursor := Data.Data'First;
   end Read;

   -----------
   -- write --
   -----------

   procedure Write
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
      Data   : in Nmea_Frame)
   is
      pragma Unreferenced (Stream, Data);
   begin
      --  Generated stub: replace with real body!
      --  pragma Compile_Time_Warning (Standard.True, "write unimplemented");
      raise Program_Error with "Unimplemented procedure write";
   end Write;

   ------------
   -- Stream --
   ------------

   function Stream
     (Data   : in Nmea_Frame)
      return not null access Ada.Streams.Root_Stream_Type'Class
   is
   begin
      return Data.N_Stream'Unrestricted_Access;
   end Stream;

   procedure Generate_Checksum (Self : in out Nmea_Frame) is
   begin
      null;
   end;

   procedure Check_Checksum (Self : Nmea_Frame) is
   begin
      if not Self.Check_Checksum then
         raise NMEA_Checksum_Error;
      end if;
   end;
   function Check_Checksum (Self : Nmea_Frame) return Boolean is
      pragma Unreferenced (Self);
   begin
      return True;
   end;



   overriding procedure Read
     (Stream : in out Nmea_Stream;
      Item   : out Ada.Streams.Stream_Element_Array;
      Last   : out Ada.Streams.Stream_Element_Offset) is
   begin
      Item := Stream.Parent.Data (Stream.In_Cursor .. Stream.In_Cursor + Item'Length - 1);
      Stream.In_Cursor := Stream.In_Cursor + Item'Length;
      Last := Item'Last;
   end;

   overriding procedure Write
     (Stream : in out Nmea_Stream;
      Item   : Ada.Streams.Stream_Element_Array) is
   begin
      null;
   end;


   function Image (Self : in Ada.Calendar.Time) return String is
   begin
      return GNAT.Calendar.Time_IO.Image (Self, "%T.%i");
   end;

   function Image (Self : in Ada.Streams.Stream_Element_Array) return String is
      type Rt is new  String (1 .. Natural (Self'Last - Self'First));
      package Conv is new System.Address_To_Access_Conversions (Rt);

   begin
      return  String (Conv.To_Pointer (Self (Self'First)'Address).all);
   end;

   function Image (Self : in Nmea_Frame) return String is
   begin
      return Image (Self.Time) &
        " '" & Image (Self.Data (Self.Data'First .. Self.Cursor)) & "'";
   end;


   procedure Dump  (Self : in Nmea_Stream) is
   begin
      Dump (Self.Parent.all);
   end;
   procedure Dump  (Self : in Nmea_Frame) is
      function IndexStr (Firts, Last, Digit : Integer) return String;
      function IndexStr (Firts, Last, Digit : Integer) return String is
         Chars : constant array (0 .. 9) of Character  := "0123456789";
         Num   : Integer := 1;
      begin
         for I in 2 .. Digit loop
            Num := Num * 10;
         end loop;
         return Ret : String (Firts .. Last) do
            for I in Ret'Range loop
               Ret (I) := Chars ((I / Num) mod 10);
            end loop;
         end return;
      end;
      Ix    : String (1 .. MAX_LENGHT) := (others => ' ');
   begin
      Ix (Natural (Self.Cursor)) := '|';
      Ix (Natural (Self.N_Stream.In_Cursor)) := 'V';
      Put_Line ("(Time     => """ & Image (Self.Time) & """,");
      Put_Line ("          --  " & Ix);
      Put_Line (" Data     => """ & Image (Self.Data) & """,");
      Put_Line ("          --  " & IndexStr (1, MAX_LENGHT, 1));
      Put_Line ("          --  " & IndexStr (1, MAX_LENGHT, 2));
      Put_Line (" Cursor   => " & Self.Cursor'Img & ",");
      Put_Line (" N_Stream => ");
      Put_Line ("  (in_Cursor => " & Self.N_Stream.In_Cursor'Img & ",");
      Put_Line ("   Length    => " & Self.N_Stream.Length'Img & ")");
      Put_Line (")");
   end;

end NMEA.Links;
