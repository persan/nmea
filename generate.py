import os
import sys
from os.path import *
import re
tmplt_1_fname="NMEA.Messages.%(MSG)s";
tmplt_1="""package body NMEA.Messages.%(MSG)s is


   -----------------
   -- Constructor --
   -----------------

   overriding function Constructor
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class)
      return %(MSG)s_Message
   is

   begin
      return Result : %(MSG)s_Message do
          %(MSG)s_Message'Read (Stream, Result);
      end return;
   end Constructor;

   overriding function Image (This : %(MSG)s_Message) return String is separate;

begin
   Register ("%(MSG)s", %(MSG)s_Message'Tag);
end NMEA.Messages.%(MSG)s;
"""
tmplt_2_fname="NMEA.Messages.%(MSG)s.Image";
tmplt_2="""separate (NMEA.Messages.%(MSG)s)
overriding
function Image (This : %(MSG)s_Message) return String is
      pragma Unreferenced (This);
begin
   return "Image ""%(MSG)s"" not implemented";
end;
"""

m=re.compile("package NMEA.Messages.([a-zA-Z0-9]*) .*")
def ada2file(s):
   return s.lower().replace(".","-")

def gen(src):
   name=None
   dir=dirname(src)
   with file(src) as inf:
      for line in inf:
         ma=m.match(line)
         if ma:
            name=ma.group(1)
   if name:
      f1=join(dir, ada2file(tmplt_1_fname % {"MSG" : name}) + ".adb")
      f2=join(dir, ada2file(tmplt_2_fname % {"MSG" : name}) + ".adb")
      if not exists(f1):
         with file(f1,"w") as outf:
            outf.write(tmplt_1 % {"MSG" : name})
      if not exists(f2):
         with file(f2,"w") as outf:
            outf.write(tmplt_2 % {"MSG" : name})



for src in sys.argv[1:]:
    gen(abspath(src))
