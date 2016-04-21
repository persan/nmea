--  ----------------------------------------------------------------------------
--
--  Do not edit since this is generated code.
--
--  ----------------------------------------------------------------------------

with NMEA.Messages.DTM;
with NMEA.Messages.GBS;
with NMEA.Messages.MSK;
with NMEA.Messages.BOD;
with NMEA.Messages.RSD;
with NMEA.Messages.ITS;
with NMEA.Messages.ZFO;
with NMEA.Messages.MWV;
with NMEA.Messages.VTG;
with NMEA.Messages.GSA;
with NMEA.Messages.BWC;
with NMEA.Messages.RMA;
with NMEA.Messages.RMB;
with NMEA.Messages.BWW;
with NMEA.Messages.GLL;
with NMEA.Messages.OSD;
with NMEA.Messages.HFB;
with NMEA.Messages.GLC;
with NMEA.Messages.GXA;
with NMEA.Messages.TPT;
with NMEA.Messages.RSA;
with NMEA.Messages.GNS;
with NMEA.Messages.VHW;
with NMEA.Messages.RME;
with NMEA.Messages.TRF;
with NMEA.Messages.RMZ;
with NMEA.Messages.STN;
with NMEA.Messages.VLW;
with NMEA.Messages.MSS;
with NMEA.Messages.WPL;
with NMEA.Messages.TPC;
with NMEA.Messages.VBW;
with NMEA.Messages.BWR;
with NMEA.Messages.GRS;
with NMEA.Messages.CGA;
with NMEA.Messages.XDR;
with NMEA.Messages.ROT;
with NMEA.Messages.TPR;
with NMEA.Messages.ALM;
with NMEA.Messages.RMM;
with NMEA.Messages.GTD;
with NMEA.Messages.XTE;
with NMEA.Messages.ZDA;
with NMEA.Messages.AAM;
with NMEA.Messages.DBK;
with NMEA.Messages.ZTG;
with NMEA.Messages.HDM;
with NMEA.Messages.VWR;
with NMEA.Messages.GST;
with NMEA.Messages.XTR;
with NMEA.Messages.LCD;
with NMEA.Messages.R00;
with NMEA.Messages.TFI;
with NMEA.Messages.VPW;
with NMEA.Messages.HDT;
with NMEA.Messages.MTW;
with NMEA.Messages.RMC;
with NMEA.Messages.TTM;
with NMEA.Messages.HDG;
with NMEA.Messages.GGA;
with NMEA.Messages.WCV;
with NMEA.Messages.GSV;
with NMEA.Messages.RTE;
with NMEA.Messages.APA;
with NMEA.Messages.APB;
with NMEA.Messages.FSI;
with NMEA.Messages.TDS;
with NMEA.Messages.SFI;
with NMEA.Messages.OLN;
with NMEA.Messages.VDM;
with NMEA.Messages.DBS;
with NMEA.Messages.DBT;
with NMEA.Messages.VDO;
with NMEA.Messages.HSC;
with NMEA.Messages.WNC;
with NMEA.Messages.DCN;
with NMEA.Messages.RPM;
with NMEA.Messages.VDR;
with NMEA.Messages.DPT;
package NMEA.Abstract_Application is

   type Application_Interface is limited interface;

   procedure On_DTM (Self    : Application_Interface;
                     Message : NMEA.Messages.DTM.DTM_Message) is null;

   procedure On_GBS (Self    : Application_Interface;
                     Message : NMEA.Messages.GBS.GBS_Message) is null;

   procedure On_MSK (Self    : Application_Interface;
                     Message : NMEA.Messages.MSK.MSK_Message) is null;

   procedure On_BOD (Self    : Application_Interface;
                     Message : NMEA.Messages.BOD.BOD_Message) is null;

   procedure On_RSD (Self    : Application_Interface;
                     Message : NMEA.Messages.RSD.RSD_Message) is null;

   procedure On_ITS (Self    : Application_Interface;
                     Message : NMEA.Messages.ITS.ITS_Message) is null;

   procedure On_ZFO (Self    : Application_Interface;
                     Message : NMEA.Messages.ZFO.ZFO_Message) is null;

   procedure On_MWV (Self    : Application_Interface;
                     Message : NMEA.Messages.MWV.MWV_Message) is null;

   procedure On_VTG (Self    : Application_Interface;
                     Message : NMEA.Messages.VTG.VTG_Message) is null;

   procedure On_GSA (Self    : Application_Interface;
                     Message : NMEA.Messages.GSA.GSA_Message) is null;

   procedure On_BWC (Self    : Application_Interface;
                     Message : NMEA.Messages.BWC.BWC_Message) is null;

   procedure On_RMA (Self    : Application_Interface;
                     Message : NMEA.Messages.RMA.RMA_Message) is null;

   procedure On_RMB (Self    : Application_Interface;
                     Message : NMEA.Messages.RMB.RMB_Message) is null;

   procedure On_BWW (Self    : Application_Interface;
                     Message : NMEA.Messages.BWW.BWW_Message) is null;

   procedure On_GLL (Self    : Application_Interface;
                     Message : NMEA.Messages.GLL.GLL_Message) is null;

   procedure On_OSD (Self    : Application_Interface;
                     Message : NMEA.Messages.OSD.OSD_Message) is null;

   procedure On_HFB (Self    : Application_Interface;
                     Message : NMEA.Messages.HFB.HFB_Message) is null;

   procedure On_GLC (Self    : Application_Interface;
                     Message : NMEA.Messages.GLC.GLC_Message) is null;

   procedure On_GXA (Self    : Application_Interface;
                     Message : NMEA.Messages.GXA.GXA_Message) is null;

   procedure On_TPT (Self    : Application_Interface;
                     Message : NMEA.Messages.TPT.TPT_Message) is null;

   procedure On_RSA (Self    : Application_Interface;
                     Message : NMEA.Messages.RSA.RSA_Message) is null;

   procedure On_GNS (Self    : Application_Interface;
                     Message : NMEA.Messages.GNS.GNS_Message) is null;

   procedure On_VHW (Self    : Application_Interface;
                     Message : NMEA.Messages.VHW.VHW_Message) is null;

   procedure On_RME (Self    : Application_Interface;
                     Message : NMEA.Messages.RME.RME_Message) is null;

   procedure On_TRF (Self    : Application_Interface;
                     Message : NMEA.Messages.TRF.TRF_Message) is null;

   procedure On_RMZ (Self    : Application_Interface;
                     Message : NMEA.Messages.RMZ.RMZ_Message) is null;

   procedure On_STN (Self    : Application_Interface;
                     Message : NMEA.Messages.STN.STN_Message) is null;

   procedure On_VLW (Self    : Application_Interface;
                     Message : NMEA.Messages.VLW.VLW_Message) is null;

   procedure On_MSS (Self    : Application_Interface;
                     Message : NMEA.Messages.MSS.MSS_Message) is null;

   procedure On_WPL (Self    : Application_Interface;
                     Message : NMEA.Messages.WPL.WPL_Message) is null;

   procedure On_TPC (Self    : Application_Interface;
                     Message : NMEA.Messages.TPC.TPC_Message) is null;

   procedure On_VBW (Self    : Application_Interface;
                     Message : NMEA.Messages.VBW.VBW_Message) is null;

   procedure On_BWR (Self    : Application_Interface;
                     Message : NMEA.Messages.BWR.BWR_Message) is null;

   procedure On_GRS (Self    : Application_Interface;
                     Message : NMEA.Messages.GRS.GRS_Message) is null;

   procedure On_CGA (Self    : Application_Interface;
                     Message : NMEA.Messages.CGA.CGA_Message) is null;

   procedure On_XDR (Self    : Application_Interface;
                     Message : NMEA.Messages.XDR.XDR_Message) is null;

   procedure On_ROT (Self    : Application_Interface;
                     Message : NMEA.Messages.ROT.ROT_Message) is null;

   procedure On_TPR (Self    : Application_Interface;
                     Message : NMEA.Messages.TPR.TPR_Message) is null;

   procedure On_ALM (Self    : Application_Interface;
                     Message : NMEA.Messages.ALM.ALM_Message) is null;

   procedure On_RMM (Self    : Application_Interface;
                     Message : NMEA.Messages.RMM.RMM_Message) is null;

   procedure On_GTD (Self    : Application_Interface;
                     Message : NMEA.Messages.GTD.GTD_Message) is null;

   procedure On_XTE (Self    : Application_Interface;
                     Message : NMEA.Messages.XTE.XTE_Message) is null;

   procedure On_ZDA (Self    : Application_Interface;
                     Message : NMEA.Messages.ZDA.ZDA_Message) is null;

   procedure On_AAM (Self    : Application_Interface;
                     Message : NMEA.Messages.AAM.AAM_Message) is null;

   procedure On_DBK (Self    : Application_Interface;
                     Message : NMEA.Messages.DBK.DBK_Message) is null;

   procedure On_ZTG (Self    : Application_Interface;
                     Message : NMEA.Messages.ZTG.ZTG_Message) is null;

   procedure On_HDM (Self    : Application_Interface;
                     Message : NMEA.Messages.HDM.HDM_Message) is null;

   procedure On_VWR (Self    : Application_Interface;
                     Message : NMEA.Messages.VWR.VWR_Message) is null;

   procedure On_GST (Self    : Application_Interface;
                     Message : NMEA.Messages.GST.GST_Message) is null;

   procedure On_XTR (Self    : Application_Interface;
                     Message : NMEA.Messages.XTR.XTR_Message) is null;

   procedure On_LCD (Self    : Application_Interface;
                     Message : NMEA.Messages.LCD.LCD_Message) is null;

   procedure On_R00 (Self    : Application_Interface;
                     Message : NMEA.Messages.R00.R00_Message) is null;

   procedure On_TFI (Self    : Application_Interface;
                     Message : NMEA.Messages.TFI.TFI_Message) is null;

   procedure On_VPW (Self    : Application_Interface;
                     Message : NMEA.Messages.VPW.VPW_Message) is null;

   procedure On_HDT (Self    : Application_Interface;
                     Message : NMEA.Messages.HDT.HDT_Message) is null;

   procedure On_MTW (Self    : Application_Interface;
                     Message : NMEA.Messages.MTW.MTW_Message) is null;

   procedure On_RMC (Self    : Application_Interface;
                     Message : NMEA.Messages.RMC.RMC_Message) is null;

   procedure On_TTM (Self    : Application_Interface;
                     Message : NMEA.Messages.TTM.TTM_Message) is null;

   procedure On_HDG (Self    : Application_Interface;
                     Message : NMEA.Messages.HDG.HDG_Message) is null;

   procedure On_GGA (Self    : Application_Interface;
                     Message : NMEA.Messages.GGA.GGA_Message) is null;

   procedure On_WCV (Self    : Application_Interface;
                     Message : NMEA.Messages.WCV.WCV_Message) is null;

   procedure On_GSV (Self    : Application_Interface;
                     Message : NMEA.Messages.GSV.GSV_Message) is null;

   procedure On_RTE (Self    : Application_Interface;
                     Message : NMEA.Messages.RTE.RTE_Message) is null;

   procedure On_APA (Self    : Application_Interface;
                     Message : NMEA.Messages.APA.APA_Message) is null;

   procedure On_APB (Self    : Application_Interface;
                     Message : NMEA.Messages.APB.APB_Message) is null;

   procedure On_FSI (Self    : Application_Interface;
                     Message : NMEA.Messages.FSI.FSI_Message) is null;

   procedure On_TDS (Self    : Application_Interface;
                     Message : NMEA.Messages.TDS.TDS_Message) is null;

   procedure On_SFI (Self    : Application_Interface;
                     Message : NMEA.Messages.SFI.SFI_Message) is null;

   procedure On_OLN (Self    : Application_Interface;
                     Message : NMEA.Messages.OLN.OLN_Message) is null;

   procedure On_VDM (Self    : Application_Interface;
                     Message : NMEA.Messages.VDM.VDM_Message) is null;

   procedure On_DBS (Self    : Application_Interface;
                     Message : NMEA.Messages.DBS.DBS_Message) is null;

   procedure On_DBT (Self    : Application_Interface;
                     Message : NMEA.Messages.DBT.DBT_Message) is null;

   procedure On_VDO (Self    : Application_Interface;
                     Message : NMEA.Messages.VDO.VDO_Message) is null;

   procedure On_HSC (Self    : Application_Interface;
                     Message : NMEA.Messages.HSC.HSC_Message) is null;

   procedure On_WNC (Self    : Application_Interface;
                     Message : NMEA.Messages.WNC.WNC_Message) is null;

   procedure On_DCN (Self    : Application_Interface;
                     Message : NMEA.Messages.DCN.DCN_Message) is null;

   procedure On_RPM (Self    : Application_Interface;
                     Message : NMEA.Messages.RPM.RPM_Message) is null;

   procedure On_VDR (Self    : Application_Interface;
                     Message : NMEA.Messages.VDR.VDR_Message) is null;

   procedure On_DPT (Self    : Application_Interface;
                     Message : NMEA.Messages.DPT.DPT_Message) is null;


   procedure Dispatch (App : Application_Interface'Class; Message : NMEA.Messages.Message'Class);
end NMEA.Abstract_Application;
