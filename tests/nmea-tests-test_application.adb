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


   overriding
   procedure On_DTM (Self    : Application;
                     Message : NMEA.Messages.DTM.DTM_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_DTM;

   overriding
   procedure On_GBS (Self    : Application;
                     Message : NMEA.Messages.GBS.GBS_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_GBS;

   overriding
   procedure On_MSK (Self    : Application;
                     Message : NMEA.Messages.MSK.MSK_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_MSK;

   overriding
   procedure On_BOD (Self    : Application;
                     Message : NMEA.Messages.BOD.BOD_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_BOD;

   overriding
   procedure On_RSD (Self    : Application;
                     Message : NMEA.Messages.RSD.RSD_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_RSD;

   overriding
   procedure On_ITS (Self    : Application;
                     Message : NMEA.Messages.ITS.ITS_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_ITS;

   overriding
   procedure On_ZFO (Self    : Application;
                     Message : NMEA.Messages.ZFO.ZFO_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_ZFO;

   overriding
   procedure On_MWV (Self    : Application;
                     Message : NMEA.Messages.MWV.MWV_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_MWV;

   overriding
   procedure On_VTG (Self    : Application;
                     Message : NMEA.Messages.VTG.VTG_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_VTG;

   overriding
   procedure On_GSA (Self    : Application;
                     Message : NMEA.Messages.GSA.GSA_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_GSA;

   overriding
   procedure On_BWC (Self    : Application;
                     Message : NMEA.Messages.BWC.BWC_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_BWC;

   overriding
   procedure On_RMA (Self    : Application;
                     Message : NMEA.Messages.RMA.RMA_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_RMA;

   overriding
   procedure On_RMB (Self    : Application;
                     Message : NMEA.Messages.RMB.RMB_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_RMB;

   overriding
   procedure On_BWW (Self    : Application;
                     Message : NMEA.Messages.BWW.BWW_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_BWW;

   overriding
   procedure On_GLL (Self    : Application;
                     Message : NMEA.Messages.GLL.GLL_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_GLL;

   overriding
   procedure On_OSD (Self    : Application;
                     Message : NMEA.Messages.OSD.OSD_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_OSD;

   overriding
   procedure On_HFB (Self    : Application;
                     Message : NMEA.Messages.HFB.HFB_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_HFB;

   overriding
   procedure On_GLC (Self    : Application;
                     Message : NMEA.Messages.GLC.GLC_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_GLC;

   overriding
   procedure On_GXA (Self    : Application;
                     Message : NMEA.Messages.GXA.GXA_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_GXA;

   overriding
   procedure On_TPT (Self    : Application;
                     Message : NMEA.Messages.TPT.TPT_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_TPT;

   overriding
   procedure On_RSA (Self    : Application;
                     Message : NMEA.Messages.RSA.RSA_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_RSA;

   overriding
   procedure On_GNS (Self    : Application;
                     Message : NMEA.Messages.GNS.GNS_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_GNS;

   overriding
   procedure On_VHW (Self    : Application;
                     Message : NMEA.Messages.VHW.VHW_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_VHW;

   overriding
   procedure On_RME (Self    : Application;
                     Message : NMEA.Messages.RME.RME_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_RME;

   overriding
   procedure On_TRF (Self    : Application;
                     Message : NMEA.Messages.TRF.TRF_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_TRF;

   overriding
   procedure On_RMZ (Self    : Application;
                     Message : NMEA.Messages.RMZ.RMZ_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_RMZ;

   overriding
   procedure On_STN (Self    : Application;
                     Message : NMEA.Messages.STN.STN_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_STN;

   overriding
   procedure On_VLW (Self    : Application;
                     Message : NMEA.Messages.VLW.VLW_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_VLW;

   overriding
   procedure On_MSS (Self    : Application;
                     Message : NMEA.Messages.MSS.MSS_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_MSS;

   overriding
   procedure On_WPL (Self    : Application;
                     Message : NMEA.Messages.WPL.WPL_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_WPL;

   overriding
   procedure On_TPC (Self    : Application;
                     Message : NMEA.Messages.TPC.TPC_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_TPC;

   overriding
   procedure On_VBW (Self    : Application;
                     Message : NMEA.Messages.VBW.VBW_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_VBW;

   overriding
   procedure On_BWR (Self    : Application;
                     Message : NMEA.Messages.BWR.BWR_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_BWR;

   overriding
   procedure On_GRS (Self    : Application;
                     Message : NMEA.Messages.GRS.GRS_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_GRS;

   overriding
   procedure On_CGA (Self    : Application;
                     Message : NMEA.Messages.CGA.CGA_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_CGA;

   overriding
   procedure On_XDR (Self    : Application;
                     Message : NMEA.Messages.XDR.XDR_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_XDR;

   overriding
   procedure On_ROT (Self    : Application;
                     Message : NMEA.Messages.ROT.ROT_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_ROT;

   overriding
   procedure On_TPR (Self    : Application;
                     Message : NMEA.Messages.TPR.TPR_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_TPR;

   overriding
   procedure On_ALM (Self    : Application;
                     Message : NMEA.Messages.ALM.ALM_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_ALM;

   overriding
   procedure On_RMM (Self    : Application;
                     Message : NMEA.Messages.RMM.RMM_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_RMM;

   overriding
   procedure On_GTD (Self    : Application;
                     Message : NMEA.Messages.GTD.GTD_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_GTD;

   overriding
   procedure On_XTE (Self    : Application;
                     Message : NMEA.Messages.XTE.XTE_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_XTE;

   overriding
   procedure On_ZDA (Self    : Application;
                     Message : NMEA.Messages.ZDA.ZDA_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_ZDA;

   overriding
   procedure On_AAM (Self    : Application;
                     Message : NMEA.Messages.AAM.AAM_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_AAM;

   overriding
   procedure On_DBK (Self    : Application;
                     Message : NMEA.Messages.DBK.DBK_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_DBK;

   overriding
   procedure On_ZTG (Self    : Application;
                     Message : NMEA.Messages.ZTG.ZTG_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_ZTG;

   overriding
   procedure On_HDM (Self    : Application;
                     Message : NMEA.Messages.HDM.HDM_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_HDM;

   overriding
   procedure On_VWR (Self    : Application;
                     Message : NMEA.Messages.VWR.VWR_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_VWR;

   overriding
   procedure On_GST (Self    : Application;
                     Message : NMEA.Messages.GST.GST_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_GST;

   overriding
   procedure On_XTR (Self    : Application;
                     Message : NMEA.Messages.XTR.XTR_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_XTR;

   overriding
   procedure On_LCD (Self    : Application;
                     Message : NMEA.Messages.LCD.LCD_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_LCD;

   overriding
   procedure On_R00 (Self    : Application;
                     Message : NMEA.Messages.R00.R00_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_R00;

   overriding
   procedure On_TFI (Self    : Application;
                     Message : NMEA.Messages.TFI.TFI_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_TFI;

   overriding
   procedure On_VPW (Self    : Application;
                     Message : NMEA.Messages.VPW.VPW_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_VPW;

   overriding
   procedure On_HDT (Self    : Application;
                     Message : NMEA.Messages.HDT.HDT_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_HDT;

   overriding
   procedure On_MTW (Self    : Application;
                     Message : NMEA.Messages.MTW.MTW_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_MTW;

   overriding
   procedure On_RMC (Self    : Application;
                     Message : NMEA.Messages.RMC.RMC_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_RMC;

   overriding
   procedure On_TTM (Self    : Application;
                     Message : NMEA.Messages.TTM.TTM_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_TTM;

   overriding
   procedure On_HDG (Self    : Application;
                     Message : NMEA.Messages.HDG.HDG_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_HDG;

   overriding
   procedure On_GGA (Self    : Application;
                     Message : NMEA.Messages.GGA.GGA_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_GGA;

   overriding
   procedure On_WCV (Self    : Application;
                     Message : NMEA.Messages.WCV.WCV_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_WCV;

   overriding
   procedure On_GSV (Self    : Application;
                     Message : NMEA.Messages.GSV.GSV_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_GSV;

   overriding
   procedure On_RTE (Self    : Application;
                     Message : NMEA.Messages.RTE.RTE_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_RTE;

   overriding
   procedure On_APA (Self    : Application;
                     Message : NMEA.Messages.APA.APA_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_APA;

   overriding
   procedure On_APB (Self    : Application;
                     Message : NMEA.Messages.APB.APB_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_APB;

   overriding
   procedure On_FSI (Self    : Application;
                     Message : NMEA.Messages.FSI.FSI_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_FSI;

   overriding
   procedure On_TDS (Self    : Application;
                     Message : NMEA.Messages.TDS.TDS_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_TDS;

   overriding
   procedure On_SFI (Self    : Application;
                     Message : NMEA.Messages.SFI.SFI_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_SFI;

   overriding
   procedure On_OLN (Self    : Application;
                     Message : NMEA.Messages.OLN.OLN_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_OLN;

   overriding
   procedure On_VDM (Self    : Application;
                     Message : NMEA.Messages.VDM.VDM_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_VDM;

   overriding
   procedure On_DBS (Self    : Application;
                     Message : NMEA.Messages.DBS.DBS_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_DBS;

   overriding
   procedure On_DBT (Self    : Application;
                     Message : NMEA.Messages.DBT.DBT_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_DBT;

   overriding
   procedure On_VDO (Self    : Application;
                     Message : NMEA.Messages.VDO.VDO_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_VDO;

   overriding
   procedure On_HSC (Self    : Application;
                     Message : NMEA.Messages.HSC.HSC_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_HSC;

   overriding
   procedure On_WNC (Self    : Application;
                     Message : NMEA.Messages.WNC.WNC_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_WNC;

   overriding
   procedure On_DCN (Self    : Application;
                     Message : NMEA.Messages.DCN.DCN_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_DCN;

   overriding
   procedure On_RPM (Self    : Application;
                     Message : NMEA.Messages.RPM.RPM_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_RPM;

   overriding
   procedure On_VDR (Self    : Application;
                     Message : NMEA.Messages.VDR.VDR_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_VDR;

   overriding
   procedure On_DPT (Self    : Application;
                     Message : NMEA.Messages.DPT.DPT_Message) is
      pragma Unreferenced (Self);
   begin
      Put_Line ("---------------------------------------------------");
      Put_Line (Enclosing_Entity);
      Put_Line (Message.Image);
      Put_Line ("---------------------------------------------------");
   end On_DPT;

end NMEA.Tests.Test_Application;
