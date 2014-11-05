--  This package has been generated automatically by GNATtest.
--  Do not edit any part of it, see GNATtest documentation for more details.

--  begin read only
with AUnit.Reporter.GNATtest;
with AUnit.Run;
with AUnit.Options; use AUnit.Options;
with Gnattest_Main_Suite; use Gnattest_Main_Suite;

with GNAT.Command_Line; use GNAT.Command_Line;

with Gnattest_Generated;

procedure Test_Runner is
   procedure Runner is new AUnit.Run.Test_Runner (Suite);
   Reporter : AUnit.Reporter.GNATtest.GNATtest_Reporter;
   GT_Options : AUnit_Options := Default_Options;
begin

   GT_Options.Report_Successes := True;

   begin
      Initialize_Option_Scan;
      loop
         case GNAT.Command_Line.Getopt ("-skeleton-default= -passed-tests=") is
            when ASCII.NUL =>
               exit;
            when '-' =>
               if Full_Switch = "-skeleton-default" then
                  if Parameter = "pass" then
                     Gnattest_Generated.Default_Assert_Value := True;
                  elsif Parameter = "fail" then
                     Gnattest_Generated.Default_Assert_Value := False;
                  end if;
               end if;
               if Full_Switch = "-passed-tests" then
                  if Parameter = "show" then
                     GT_Options.Report_Successes := True;
                  elsif Parameter = "hide" then
                     GT_Options.Report_Successes := False;
                  end if;
               end if;
            when others => null;
         end case;
      end loop;
   exception
      when GNAT.Command_Line.Invalid_Switch => null;
   end;

   Runner (Reporter, GT_Options);
end Test_Runner;
--  end read only
