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
TEST_HEADER = """--  ----------------------------------------------------------------------------
--
--  Generated test application to be used as sample or baseline.
--
--  ----------------------------------------------------------------------------

"""


IMPORT = "with NMEA.Messages.%(name)s;"
CALL = """   procedure On_%(name)s (Self    : in out Application_Interface;
                     Message : NMEA.Messages.%(name)s.%(name)s_Message) is null;
"""
TEST_CALL = """
   overriding
   procedure On_%(name)s (Self    : Application;
                     Message : NMEA.Messages.%(name)s.%(name)s_Message);"""

TEST_PROCEDURE = """
   overriding
   procedure On_%(name)s (Self    : Application;
                     Message : NMEA.Messages.%(name)s.%(name)s_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_%(name)s;"""

SPEC = HEADER + """
%(imports)s
package NMEA.Abstract_Application is

   type Application_Interface is limited interface;

%(calls)s

   procedure Dispatch (App : Application_Interface'Class; Message : NMEA.Messages.Message'Class);
end NMEA.Abstract_Application;
"""

DISPATCH = """      elsif Message_Tag = NMEA.Messages.%(name)s.%(name)s_Message'Tag then
         App.On_%(name)s (NMEA.Messages.%(name)s.%(name)s_Message (Message));"""

BODY = HEADER + """
with Ada.Tags; use Ada.Tags;
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
      Message_Tag : constant Ada.Tags.Tag := Message'Tag;
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
TEST_BODY = TEST_HEADER + """
with Ada.Text_IO;
with GNAT.Source_Info;
package body NMEA.Tests.Test_Application is

   use Ada.Text_IO;
   use GNAT.Source_Info;

%(test_procedures)s

end NMEA.Tests.Test_Application;
"""


dispatch = []
imports = []
calls = []
test_calls = []
test_procedures=[]

for name in names:
    imports.append(IMPORT % {"name": name})
    calls.append(CALL % {"name": name})
    test_calls.append(TEST_CALL % {"name": name})
    dispatch.append(DISPATCH % {"name": name})
    test_procedures.append(TEST_PROCEDURE % {"name": name})

with file("src/nmea-abstract_application.ads", "w") as spec:
    spec.write(SPEC % {"imports": "\n".join(imports),
                       "calls": "\n".join(calls)})

with file("src/nmea-abstract_application.adb", "w") as body:
    body.write(BODY % {"dispatch": "\n".join(dispatch)})


TEST_SPEC = TEST_HEADER + """
%(imports)s

with Ada.Finalization;
with NMEA.Abstract_Application;

package NMEA.Tests.Test_Application is

   type Application is new Ada.Finalization.Controlled and
      NMEA.Abstract_Application.Application_Interface with
   record
      null;
   end record;

%(calls)s

end NMEA.Tests.Test_Application;
"""

with file("tests/nmea-tests-test_application.ads", "w") as spec:
    spec.write(TEST_SPEC % {"imports": "\n".join(imports),
                            "calls": "\n".join(test_calls)})


with file("tests/nmea-tests-test_application.adb", "w") as body:
    body.write(TEST_BODY % {"imports": "\n".join(imports),
                            "test_procedures": "\n".join(test_procedures)})
