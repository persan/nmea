--  ----------------------------------------------------------------------------
--
--  Generated test application to be used as sample or baseline.
--
--  ----------------------------------------------------------------------------


with Ada.Text_IO;
with GNAT.Source_Info;
package body NMEA.Tests.Test_Application is

   use Ada.Text_IO;
   use GNAT.Source_Info;

   function Is_Active (Self : Application) return Boolean is
      pragma Unreferenced (Self);
   begin
      return True;
   end Is_Active;


   not overriding
   procedure Run (Self : in out Application; Src : not null access Ada.Streams.Root_Stream_Type'Class) is
   begin
      while Self.Is_Active loop
         NMEA.Abstract_Application.Dispatch (Self, NMEA.Messages.Message'Class'Input (Src));
      end loop;
   end;


   overriding
   procedure On_AAM (Self    : in out Application;
                     Message : NMEA.Messages.AAM.AAM_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_AAM;

   overriding
   procedure On_ALM (Self    : in out Application;
                     Message : NMEA.Messages.ALM.ALM_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_ALM;

   overriding
   procedure On_APA (Self    : in out Application;
                     Message : NMEA.Messages.APA.APA_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_APA;

   overriding
   procedure On_APB (Self    : in out Application;
                     Message : NMEA.Messages.APB.APB_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_APB;

   overriding
   procedure On_BOD (Self    : in out Application;
                     Message : NMEA.Messages.BOD.BOD_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_BOD;

   overriding
   procedure On_BWC (Self    : in out Application;
                     Message : NMEA.Messages.BWC.BWC_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_BWC;

   overriding
   procedure On_BWR (Self    : in out Application;
                     Message : NMEA.Messages.BWR.BWR_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_BWR;

   overriding
   procedure On_BWW (Self    : in out Application;
                     Message : NMEA.Messages.BWW.BWW_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_BWW;

   overriding
   procedure On_DBK (Self    : in out Application;
                     Message : NMEA.Messages.DBK.DBK_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_DBK;

   overriding
   procedure On_DBS (Self    : in out Application;
                     Message : NMEA.Messages.DBS.DBS_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_DBS;

   overriding
   procedure On_DBT (Self    : in out Application;
                     Message : NMEA.Messages.DBT.DBT_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_DBT;

   overriding
   procedure On_DCN (Self    : in out Application;
                     Message : NMEA.Messages.DCN.DCN_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_DCN;

   overriding
   procedure On_DPT (Self    : in out Application;
                     Message : NMEA.Messages.DPT.DPT_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_DPT;

   overriding
   procedure On_DTM (Self    : in out Application;
                     Message : NMEA.Messages.DTM.DTM_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_DTM;

   overriding
   procedure On_FSI (Self    : in out Application;
                     Message : NMEA.Messages.FSI.FSI_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_FSI;

   overriding
   procedure On_GBS (Self    : in out Application;
                     Message : NMEA.Messages.GBS.GBS_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_GBS;

   overriding
   procedure On_GGA (Self    : in out Application;
                     Message : NMEA.Messages.GGA.GGA_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_GGA;

   overriding
   procedure On_GLC (Self    : in out Application;
                     Message : NMEA.Messages.GLC.GLC_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_GLC;

   overriding
   procedure On_GLL (Self    : in out Application;
                     Message : NMEA.Messages.GLL.GLL_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_GLL;

   overriding
   procedure On_GNS (Self    : in out Application;
                     Message : NMEA.Messages.GNS.GNS_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_GNS;

   overriding
   procedure On_GRS (Self    : in out Application;
                     Message : NMEA.Messages.GRS.GRS_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_GRS;

   overriding
   procedure On_GSA (Self    : in out Application;
                     Message : NMEA.Messages.GSA.GSA_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_GSA;

   overriding
   procedure On_GST (Self    : in out Application;
                     Message : NMEA.Messages.GST.GST_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_GST;

   overriding
   procedure On_GSV (Self    : in out Application;
                     Message : NMEA.Messages.GSV.GSV_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_GSV;

   overriding
   procedure On_GTD (Self    : in out Application;
                     Message : NMEA.Messages.GTD.GTD_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_GTD;

   overriding
   procedure On_GXA (Self    : in out Application;
                     Message : NMEA.Messages.GXA.GXA_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_GXA;

   overriding
   procedure On_HDG (Self    : in out Application;
                     Message : NMEA.Messages.HDG.HDG_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_HDG;

   overriding
   procedure On_HDM (Self    : in out Application;
                     Message : NMEA.Messages.HDM.HDM_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_HDM;

   overriding
   procedure On_HDT (Self    : in out Application;
                     Message : NMEA.Messages.HDT.HDT_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_HDT;

   overriding
   procedure On_HFB (Self    : in out Application;
                     Message : NMEA.Messages.HFB.HFB_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_HFB;

   overriding
   procedure On_HSC (Self    : in out Application;
                     Message : NMEA.Messages.HSC.HSC_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_HSC;

   overriding
   procedure On_ITS (Self    : in out Application;
                     Message : NMEA.Messages.ITS.ITS_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_ITS;

   overriding
   procedure On_LCD (Self    : in out Application;
                     Message : NMEA.Messages.LCD.LCD_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_LCD;

   overriding
   procedure On_MSK (Self    : in out Application;
                     Message : NMEA.Messages.MSK.MSK_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_MSK;

   overriding
   procedure On_MSS (Self    : in out Application;
                     Message : NMEA.Messages.MSS.MSS_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_MSS;

   overriding
   procedure On_MTW (Self    : in out Application;
                     Message : NMEA.Messages.MTW.MTW_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_MTW;

   overriding
   procedure On_MWV (Self    : in out Application;
                     Message : NMEA.Messages.MWV.MWV_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_MWV;

   overriding
   procedure On_OLN (Self    : in out Application;
                     Message : NMEA.Messages.OLN.OLN_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_OLN;

   overriding
   procedure On_OSD (Self    : in out Application;
                     Message : NMEA.Messages.OSD.OSD_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_OSD;

   overriding
   procedure On_R00 (Self    : in out Application;
                     Message : NMEA.Messages.R00.R00_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_R00;

   overriding
   procedure On_RMA (Self    : in out Application;
                     Message : NMEA.Messages.RMA.RMA_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_RMA;

   overriding
   procedure On_RMB (Self    : in out Application;
                     Message : NMEA.Messages.RMB.RMB_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_RMB;

   overriding
   procedure On_RMC (Self    : in out Application;
                     Message : NMEA.Messages.RMC.RMC_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_RMC;

   overriding
   procedure On_ROT (Self    : in out Application;
                     Message : NMEA.Messages.ROT.ROT_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_ROT;

   overriding
   procedure On_RPM (Self    : in out Application;
                     Message : NMEA.Messages.RPM.RPM_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_RPM;

   overriding
   procedure On_RSA (Self    : in out Application;
                     Message : NMEA.Messages.RSA.RSA_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_RSA;

   overriding
   procedure On_RSD (Self    : in out Application;
                     Message : NMEA.Messages.RSD.RSD_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_RSD;

   overriding
   procedure On_RTE (Self    : in out Application;
                     Message : NMEA.Messages.RTE.RTE_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_RTE;

   overriding
   procedure On_SFI (Self    : in out Application;
                     Message : NMEA.Messages.SFI.SFI_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_SFI;

   overriding
   procedure On_STN (Self    : in out Application;
                     Message : NMEA.Messages.STN.STN_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_STN;

   overriding
   procedure On_TDS (Self    : in out Application;
                     Message : NMEA.Messages.TDS.TDS_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_TDS;

   overriding
   procedure On_TFI (Self    : in out Application;
                     Message : NMEA.Messages.TFI.TFI_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_TFI;

   overriding
   procedure On_TPC (Self    : in out Application;
                     Message : NMEA.Messages.TPC.TPC_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_TPC;

   overriding
   procedure On_TPR (Self    : in out Application;
                     Message : NMEA.Messages.TPR.TPR_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_TPR;

   overriding
   procedure On_TPT (Self    : in out Application;
                     Message : NMEA.Messages.TPT.TPT_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_TPT;

   overriding
   procedure On_TRF (Self    : in out Application;
                     Message : NMEA.Messages.TRF.TRF_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_TRF;

   overriding
   procedure On_TTM (Self    : in out Application;
                     Message : NMEA.Messages.TTM.TTM_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_TTM;

   overriding
   procedure On_VBW (Self    : in out Application;
                     Message : NMEA.Messages.VBW.VBW_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_VBW;

   overriding
   procedure On_VDR (Self    : in out Application;
                     Message : NMEA.Messages.VDR.VDR_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_VDR;

   overriding
   procedure On_VHW (Self    : in out Application;
                     Message : NMEA.Messages.VHW.VHW_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_VHW;

   overriding
   procedure On_VLW (Self    : in out Application;
                     Message : NMEA.Messages.VLW.VLW_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_VLW;

   overriding
   procedure On_VPW (Self    : in out Application;
                     Message : NMEA.Messages.VPW.VPW_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_VPW;

   overriding
   procedure On_VTG (Self    : in out Application;
                     Message : NMEA.Messages.VTG.VTG_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_VTG;

   overriding
   procedure On_VWR (Self    : in out Application;
                     Message : NMEA.Messages.VWR.VWR_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_VWR;

   overriding
   procedure On_WCV (Self    : in out Application;
                     Message : NMEA.Messages.WCV.WCV_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_WCV;

   overriding
   procedure On_WNC (Self    : in out Application;
                     Message : NMEA.Messages.WNC.WNC_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_WNC;

   overriding
   procedure On_WPL (Self    : in out Application;
                     Message : NMEA.Messages.WPL.WPL_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_WPL;

   overriding
   procedure On_XDR (Self    : in out Application;
                     Message : NMEA.Messages.XDR.XDR_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_XDR;

   overriding
   procedure On_XTE (Self    : in out Application;
                     Message : NMEA.Messages.XTE.XTE_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_XTE;

   overriding
   procedure On_XTR (Self    : in out Application;
                     Message : NMEA.Messages.XTR.XTR_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_XTR;

   overriding
   procedure On_ZDA (Self    : in out Application;
                     Message : NMEA.Messages.ZDA.ZDA_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_ZDA;

   overriding
   procedure On_ZFO (Self    : in out Application;
                     Message : NMEA.Messages.ZFO.ZFO_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_ZFO;

   overriding
   procedure On_ZTG (Self    : in out Application;
                     Message : NMEA.Messages.ZTG.ZTG_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_ZTG;

end NMEA.Tests.Test_Application;
