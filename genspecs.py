import os
import sys
from os.path import *
tmplt="""with Ada.Streams;
package NMEA.Messages.%(MSG)s is
   type %(MSG)s_Message is new Message with record
     null;
   end record;

   overriding function Image (This : %(MSG)s_Message) return String;

private
   overriding
   function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return %(MSG)s_Message;
end NMEA.Messages.%(MSG)s;
"""
def ada2file(s):
   return s.lower().replace(".","-")

with file(sys.argv[1]) as inf:
   for line in inf:
      line=line.strip().split(",")
      if len(line) > 1:
         msg=line[0][1:]
         name = "NMEA.Messages.%(MSG)s" % {"MSG":msg}
         fpath=join("src","messages",ada2file(name) + ".ads")
         if not exists(fpath):
            with file(fpath,"w") as outf:
               outf.write(tmplt % {"MSG":msg})
         else:
            print msg
