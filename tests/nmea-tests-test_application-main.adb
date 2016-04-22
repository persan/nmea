with GNAT.Serial_Communications;

procedure NMEA.Tests.Test_Application.Main is
   App      : NMEA.Tests.Test_Application.Application;
   Src      : aliased GNAT.Serial_Communications.Serial_Port;

begin
   Src.Open ("/dev/ttyS0");
   Src.Set (Rate => GNAT.Serial_Communications.B1200,
            Bits => GNAT.Serial_Communications.CS8,
            Timeout => 5.0);
   while App.Is_Active loop
      NMEA.Abstract_Application.Dispatch (App, NMEA.Messages.Message'Class'Input (Src'Access));
   end loop;
   Src.Close;
end NMEA.Tests.Test_Application.Main;
