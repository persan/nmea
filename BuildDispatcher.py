from os.path import *
import glob
import re

names = []
matcher = re.compile(r"package\s+NMEA.Messages.(\S+)\s+is")
for path in glob.glob("src/messages/*.ads"):
    with open(path) as inf:
        for line in inf:
            m = matcher.match(line)
            if m:
                names.append(m.group(1))


HEADER = """--  ----------------------------------------------------------------------------
--
--  Do not edit since this is generated code.
--
--  ----------------------------------------------------------------------------

"""
IMPORT = "with NMEA.Messages.%(name)s;"
CALL = """   procedure On_%(name)s (Self    : Application_Interface;
                     Message : NMEA.Messages.%(name)s.%(name)s_Message) is null;
"""

SPEC = HEADER + """%(imports)s
package NMEA.Abstract_Application is

   type Application_Interface is limited interface;

%(calls)s

   procedure Dispatch (App : Application_Interface'Class; Message : NMEA.Messages.Message'Class);
end NMEA.Abstract_Application;
"""

DISPATCH = """      elsif Message'Tag = NMEA.Messages.%(name)s.%(name)s_Message'Tag then
         App.On_%(name)s (NMEA.Messages.%(name)s.%(name)s_Message (Message));"""

BODY = HEADER + """with Ada.Tags; use Ada.Tags;
package body NMEA.Abstract_Application is

   pragma Suppress_All;
   pragma Warnings (Off);

   --------------
   -- Dispatch --
   --------------


   procedure Dispatch
     (App     : Application_Interface'Class;
      Message : NMEA.Messages.Message'Class)
   is
   begin
      if False then
         null;
%(dispatch)s
      else
         null;
      end if;
   end Dispatch;

end NMEA.Abstract_Application;
"""

dispatch = []
imports = []
calls = []
for name in names:
    imports.append(IMPORT % {"name": name})
    calls.append(CALL % {"name": name})
    dispatch.append(DISPATCH % {"name": name})

with file("src/nmea-abstract_application.ads", "w") as spec:
    spec.write(SPEC % {"imports": "\n".join(imports),
                       "calls": "\n".join(calls)})

with file("src/nmea-abstract_application.adb", "w") as body:
    body.write(BODY % {"dispatch": "\n".join(dispatch)})
