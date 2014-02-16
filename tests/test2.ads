with Test;
package Test2 is
   type Meters is new Test.Long_Float;
   --     with
   --     Read  => Read,
   --     Write => Write;
   --     procedure Read (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
   --                                     Data   : out Meters);
   --
   --     procedure Write (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
   --                                      Data   : in Meters);
end Test2;
