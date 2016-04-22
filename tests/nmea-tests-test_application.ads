--  ----------------------------------------------------------------------------
--
--  Generated test application to be used as sample or baseline.
--
--  ----------------------------------------------------------------------------


with NMEA.Messages.AAM;
with NMEA.Messages.ALM;
with NMEA.Messages.APA;
with NMEA.Messages.APB;
with NMEA.Messages.BOD;
with NMEA.Messages.BWC;
with NMEA.Messages.BWR;
with NMEA.Messages.BWW;
with NMEA.Messages.DBK;
with NMEA.Messages.DBS;
with NMEA.Messages.DBT;
with NMEA.Messages.DCN;
with NMEA.Messages.DPT;
with NMEA.Messages.DTM;
with NMEA.Messages.FSI;
with NMEA.Messages.GBS;
with NMEA.Messages.GGA;
with NMEA.Messages.GLC;
with NMEA.Messages.GLL;
with NMEA.Messages.GNS;
with NMEA.Messages.GRS;
with NMEA.Messages.GSA;
with NMEA.Messages.GST;
with NMEA.Messages.GSV;
with NMEA.Messages.GTD;
with NMEA.Messages.GXA;
with NMEA.Messages.HDG;
with NMEA.Messages.HDM;
with NMEA.Messages.HDT;
with NMEA.Messages.HFB;
with NMEA.Messages.HSC;
with NMEA.Messages.ITS;
with NMEA.Messages.LCD;
with NMEA.Messages.MSK;
with NMEA.Messages.MSS;
with NMEA.Messages.MTW;
with NMEA.Messages.MWV;
with NMEA.Messages.OLN;
with NMEA.Messages.OSD;
with NMEA.Messages.R00;
with NMEA.Messages.RMA;
with NMEA.Messages.RMB;
with NMEA.Messages.RMC;
with NMEA.Messages.ROT;
with NMEA.Messages.RPM;
with NMEA.Messages.RSA;
with NMEA.Messages.RSD;
with NMEA.Messages.RTE;
with NMEA.Messages.SFI;
with NMEA.Messages.STN;
with NMEA.Messages.TDS;
with NMEA.Messages.TFI;
with NMEA.Messages.TPC;
with NMEA.Messages.TPR;
with NMEA.Messages.TPT;
with NMEA.Messages.TRF;
with NMEA.Messages.TTM;
with NMEA.Messages.VBW;
with NMEA.Messages.VDR;
with NMEA.Messages.VHW;
with NMEA.Messages.VLW;
with NMEA.Messages.VPW;
with NMEA.Messages.VTG;
with NMEA.Messages.VWR;
with NMEA.Messages.WCV;
with NMEA.Messages.WNC;
with NMEA.Messages.WPL;
with NMEA.Messages.XDR;
with NMEA.Messages.XTE;
with NMEA.Messages.XTR;
with NMEA.Messages.ZDA;
with NMEA.Messages.ZFO;
with NMEA.Messages.ZTG;

with Ada.Finalization;
with NMEA.Abstract_Application;

package NMEA.Tests.Test_Application is

   type Application is new Ada.Finalization.Controlled and
      NMEA.Abstract_Application.Application_Interface with
   record
      null;
   end record;
   
   function Is_Active (Self : Application) return Boolean;
   

   overriding
   procedure On_AAM (Self    : in out Application;
                     Message : NMEA.Messages.AAM.AAM_Message);

   overriding
   procedure On_ALM (Self    : in out Application;
                     Message : NMEA.Messages.ALM.ALM_Message);

   overriding
   procedure On_APA (Self    : in out Application;
                     Message : NMEA.Messages.APA.APA_Message);

   overriding
   procedure On_APB (Self    : in out Application;
                     Message : NMEA.Messages.APB.APB_Message);

   overriding
   procedure On_BOD (Self    : in out Application;
                     Message : NMEA.Messages.BOD.BOD_Message);

   overriding
   procedure On_BWC (Self    : in out Application;
                     Message : NMEA.Messages.BWC.BWC_Message);

   overriding
   procedure On_BWR (Self    : in out Application;
                     Message : NMEA.Messages.BWR.BWR_Message);

   overriding
   procedure On_BWW (Self    : in out Application;
                     Message : NMEA.Messages.BWW.BWW_Message);

   overriding
   procedure On_DBK (Self    : in out Application;
                     Message : NMEA.Messages.DBK.DBK_Message);

   overriding
   procedure On_DBS (Self    : in out Application;
                     Message : NMEA.Messages.DBS.DBS_Message);

   overriding
   procedure On_DBT (Self    : in out Application;
                     Message : NMEA.Messages.DBT.DBT_Message);

   overriding
   procedure On_DCN (Self    : in out Application;
                     Message : NMEA.Messages.DCN.DCN_Message);

   overriding
   procedure On_DPT (Self    : in out Application;
                     Message : NMEA.Messages.DPT.DPT_Message);

   overriding
   procedure On_DTM (Self    : in out Application;
                     Message : NMEA.Messages.DTM.DTM_Message);

   overriding
   procedure On_FSI (Self    : in out Application;
                     Message : NMEA.Messages.FSI.FSI_Message);

   overriding
   procedure On_GBS (Self    : in out Application;
                     Message : NMEA.Messages.GBS.GBS_Message);

   overriding
   procedure On_GGA (Self    : in out Application;
                     Message : NMEA.Messages.GGA.GGA_Message);

   overriding
   procedure On_GLC (Self    : in out Application;
                     Message : NMEA.Messages.GLC.GLC_Message);

   overriding
   procedure On_GLL (Self    : in out Application;
                     Message : NMEA.Messages.GLL.GLL_Message);

   overriding
   procedure On_GNS (Self    : in out Application;
                     Message : NMEA.Messages.GNS.GNS_Message);

   overriding
   procedure On_GRS (Self    : in out Application;
                     Message : NMEA.Messages.GRS.GRS_Message);

   overriding
   procedure On_GSA (Self    : in out Application;
                     Message : NMEA.Messages.GSA.GSA_Message);

   overriding
   procedure On_GST (Self    : in out Application;
                     Message : NMEA.Messages.GST.GST_Message);

   overriding
   procedure On_GSV (Self    : in out Application;
                     Message : NMEA.Messages.GSV.GSV_Message);

   overriding
   procedure On_GTD (Self    : in out Application;
                     Message : NMEA.Messages.GTD.GTD_Message);

   overriding
   procedure On_GXA (Self    : in out Application;
                     Message : NMEA.Messages.GXA.GXA_Message);

   overriding
   procedure On_HDG (Self    : in out Application;
                     Message : NMEA.Messages.HDG.HDG_Message);

   overriding
   procedure On_HDM (Self    : in out Application;
                     Message : NMEA.Messages.HDM.HDM_Message);

   overriding
   procedure On_HDT (Self    : in out Application;
                     Message : NMEA.Messages.HDT.HDT_Message);

   overriding
   procedure On_HFB (Self    : in out Application;
                     Message : NMEA.Messages.HFB.HFB_Message);

   overriding
   procedure On_HSC (Self    : in out Application;
                     Message : NMEA.Messages.HSC.HSC_Message);

   overriding
   procedure On_ITS (Self    : in out Application;
                     Message : NMEA.Messages.ITS.ITS_Message);

   overriding
   procedure On_LCD (Self    : in out Application;
                     Message : NMEA.Messages.LCD.LCD_Message);

   overriding
   procedure On_MSK (Self    : in out Application;
                     Message : NMEA.Messages.MSK.MSK_Message);

   overriding
   procedure On_MSS (Self    : in out Application;
                     Message : NMEA.Messages.MSS.MSS_Message);

   overriding
   procedure On_MTW (Self    : in out Application;
                     Message : NMEA.Messages.MTW.MTW_Message);

   overriding
   procedure On_MWV (Self    : in out Application;
                     Message : NMEA.Messages.MWV.MWV_Message);

   overriding
   procedure On_OLN (Self    : in out Application;
                     Message : NMEA.Messages.OLN.OLN_Message);

   overriding
   procedure On_OSD (Self    : in out Application;
                     Message : NMEA.Messages.OSD.OSD_Message);

   overriding
   procedure On_R00 (Self    : in out Application;
                     Message : NMEA.Messages.R00.R00_Message);

   overriding
   procedure On_RMA (Self    : in out Application;
                     Message : NMEA.Messages.RMA.RMA_Message);

   overriding
   procedure On_RMB (Self    : in out Application;
                     Message : NMEA.Messages.RMB.RMB_Message);

   overriding
   procedure On_RMC (Self    : in out Application;
                     Message : NMEA.Messages.RMC.RMC_Message);

   overriding
   procedure On_ROT (Self    : in out Application;
                     Message : NMEA.Messages.ROT.ROT_Message);

   overriding
   procedure On_RPM (Self    : in out Application;
                     Message : NMEA.Messages.RPM.RPM_Message);

   overriding
   procedure On_RSA (Self    : in out Application;
                     Message : NMEA.Messages.RSA.RSA_Message);

   overriding
   procedure On_RSD (Self    : in out Application;
                     Message : NMEA.Messages.RSD.RSD_Message);

   overriding
   procedure On_RTE (Self    : in out Application;
                     Message : NMEA.Messages.RTE.RTE_Message);

   overriding
   procedure On_SFI (Self    : in out Application;
                     Message : NMEA.Messages.SFI.SFI_Message);

   overriding
   procedure On_STN (Self    : in out Application;
                     Message : NMEA.Messages.STN.STN_Message);

   overriding
   procedure On_TDS (Self    : in out Application;
                     Message : NMEA.Messages.TDS.TDS_Message);

   overriding
   procedure On_TFI (Self    : in out Application;
                     Message : NMEA.Messages.TFI.TFI_Message);

   overriding
   procedure On_TPC (Self    : in out Application;
                     Message : NMEA.Messages.TPC.TPC_Message);

   overriding
   procedure On_TPR (Self    : in out Application;
                     Message : NMEA.Messages.TPR.TPR_Message);

   overriding
   procedure On_TPT (Self    : in out Application;
                     Message : NMEA.Messages.TPT.TPT_Message);

   overriding
   procedure On_TRF (Self    : in out Application;
                     Message : NMEA.Messages.TRF.TRF_Message);

   overriding
   procedure On_TTM (Self    : in out Application;
                     Message : NMEA.Messages.TTM.TTM_Message);

   overriding
   procedure On_VBW (Self    : in out Application;
                     Message : NMEA.Messages.VBW.VBW_Message);

   overriding
   procedure On_VDR (Self    : in out Application;
                     Message : NMEA.Messages.VDR.VDR_Message);

   overriding
   procedure On_VHW (Self    : in out Application;
                     Message : NMEA.Messages.VHW.VHW_Message);

   overriding
   procedure On_VLW (Self    : in out Application;
                     Message : NMEA.Messages.VLW.VLW_Message);

   overriding
   procedure On_VPW (Self    : in out Application;
                     Message : NMEA.Messages.VPW.VPW_Message);

   overriding
   procedure On_VTG (Self    : in out Application;
                     Message : NMEA.Messages.VTG.VTG_Message);

   overriding
   procedure On_VWR (Self    : in out Application;
                     Message : NMEA.Messages.VWR.VWR_Message);

   overriding
   procedure On_WCV (Self    : in out Application;
                     Message : NMEA.Messages.WCV.WCV_Message);

   overriding
   procedure On_WNC (Self    : in out Application;
                     Message : NMEA.Messages.WNC.WNC_Message);

   overriding
   procedure On_WPL (Self    : in out Application;
                     Message : NMEA.Messages.WPL.WPL_Message);

   overriding
   procedure On_XDR (Self    : in out Application;
                     Message : NMEA.Messages.XDR.XDR_Message);

   overriding
   procedure On_XTE (Self    : in out Application;
                     Message : NMEA.Messages.XTE.XTE_Message);

   overriding
   procedure On_XTR (Self    : in out Application;
                     Message : NMEA.Messages.XTR.XTR_Message);

   overriding
   procedure On_ZDA (Self    : in out Application;
                     Message : NMEA.Messages.ZDA.ZDA_Message);

   overriding
   procedure On_ZFO (Self    : in out Application;
                     Message : NMEA.Messages.ZFO.ZFO_Message);

   overriding
   procedure On_ZTG (Self    : in out Application;
                     Message : NMEA.Messages.ZTG.ZTG_Message);

end NMEA.Tests.Test_Application;
