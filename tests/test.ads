with Ada.Streams;
package Test is
   type Long_Float is new Standard.Long_Float;
   procedure Read (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                   Data   : out Long_Float);

   procedure Write (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
                    Data   : in Long_Float);
   for Long_Float'Read  use Read;
   for Long_Float'Write  use Write;

   type Meters is new Long_Float;
   --     with
   --     Read  => Read,
   --     Write => Write;
   --     procedure Read (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
   --                                     Data   : out Meters);
   --
   --     procedure Write (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
   --                                      Data   : in Meters);
end Test;
