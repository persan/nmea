--  ----------------------------------------------------------------------------
--
--  Do not edit since this is generated code.
--
--  ----------------------------------------------------------------------------


with Ada.Tags; use Ada.Tags;
package body NMEA.Abstract_Application is

   pragma Suppress_All;
   pragma Warnings (Off);

   --------------
   -- Dispatch --
   --------------


   procedure Dispatch
     (App     : in out Application_Interface'Class;
      Message : NMEA.Messages.Message'Class)
   is
      Message_Tag : constant Ada.Tags.Tag := Message'Tag;
   begin
      if False then
         null;
      elsif Message_Tag = NMEA.Messages.AAM.AAM_Message'Tag then
         App.On_AAM (NMEA.Messages.AAM.AAM_Message (Message));
      elsif Message_Tag = NMEA.Messages.ALM.ALM_Message'Tag then
         App.On_ALM (NMEA.Messages.ALM.ALM_Message (Message));
      elsif Message_Tag = NMEA.Messages.APA.APA_Message'Tag then
         App.On_APA (NMEA.Messages.APA.APA_Message (Message));
      elsif Message_Tag = NMEA.Messages.APB.APB_Message'Tag then
         App.On_APB (NMEA.Messages.APB.APB_Message (Message));
      elsif Message_Tag = NMEA.Messages.BOD.BOD_Message'Tag then
         App.On_BOD (NMEA.Messages.BOD.BOD_Message (Message));
      elsif Message_Tag = NMEA.Messages.BWC.BWC_Message'Tag then
         App.On_BWC (NMEA.Messages.BWC.BWC_Message (Message));
      elsif Message_Tag = NMEA.Messages.BWR.BWR_Message'Tag then
         App.On_BWR (NMEA.Messages.BWR.BWR_Message (Message));
      elsif Message_Tag = NMEA.Messages.BWW.BWW_Message'Tag then
         App.On_BWW (NMEA.Messages.BWW.BWW_Message (Message));
      elsif Message_Tag = NMEA.Messages.DBK.DBK_Message'Tag then
         App.On_DBK (NMEA.Messages.DBK.DBK_Message (Message));
      elsif Message_Tag = NMEA.Messages.DBS.DBS_Message'Tag then
         App.On_DBS (NMEA.Messages.DBS.DBS_Message (Message));
      elsif Message_Tag = NMEA.Messages.DBT.DBT_Message'Tag then
         App.On_DBT (NMEA.Messages.DBT.DBT_Message (Message));
      elsif Message_Tag = NMEA.Messages.DCN.DCN_Message'Tag then
         App.On_DCN (NMEA.Messages.DCN.DCN_Message (Message));
      elsif Message_Tag = NMEA.Messages.DPT.DPT_Message'Tag then
         App.On_DPT (NMEA.Messages.DPT.DPT_Message (Message));
      elsif Message_Tag = NMEA.Messages.DTM.DTM_Message'Tag then
         App.On_DTM (NMEA.Messages.DTM.DTM_Message (Message));
      elsif Message_Tag = NMEA.Messages.FSI.FSI_Message'Tag then
         App.On_FSI (NMEA.Messages.FSI.FSI_Message (Message));
      elsif Message_Tag = NMEA.Messages.GBS.GBS_Message'Tag then
         App.On_GBS (NMEA.Messages.GBS.GBS_Message (Message));
      elsif Message_Tag = NMEA.Messages.GGA.GGA_Message'Tag then
         App.On_GGA (NMEA.Messages.GGA.GGA_Message (Message));
      elsif Message_Tag = NMEA.Messages.GLC.GLC_Message'Tag then
         App.On_GLC (NMEA.Messages.GLC.GLC_Message (Message));
      elsif Message_Tag = NMEA.Messages.GLL.GLL_Message'Tag then
         App.On_GLL (NMEA.Messages.GLL.GLL_Message (Message));
      elsif Message_Tag = NMEA.Messages.GNS.GNS_Message'Tag then
         App.On_GNS (NMEA.Messages.GNS.GNS_Message (Message));
      elsif Message_Tag = NMEA.Messages.GRS.GRS_Message'Tag then
         App.On_GRS (NMEA.Messages.GRS.GRS_Message (Message));
      elsif Message_Tag = NMEA.Messages.GSA.GSA_Message'Tag then
         App.On_GSA (NMEA.Messages.GSA.GSA_Message (Message));
      elsif Message_Tag = NMEA.Messages.GST.GST_Message'Tag then
         App.On_GST (NMEA.Messages.GST.GST_Message (Message));
      elsif Message_Tag = NMEA.Messages.GSV.GSV_Message'Tag then
         App.On_GSV (NMEA.Messages.GSV.GSV_Message (Message));
      elsif Message_Tag = NMEA.Messages.GTD.GTD_Message'Tag then
         App.On_GTD (NMEA.Messages.GTD.GTD_Message (Message));
      elsif Message_Tag = NMEA.Messages.GXA.GXA_Message'Tag then
         App.On_GXA (NMEA.Messages.GXA.GXA_Message (Message));
      elsif Message_Tag = NMEA.Messages.HDG.HDG_Message'Tag then
         App.On_HDG (NMEA.Messages.HDG.HDG_Message (Message));
      elsif Message_Tag = NMEA.Messages.HDM.HDM_Message'Tag then
         App.On_HDM (NMEA.Messages.HDM.HDM_Message (Message));
      elsif Message_Tag = NMEA.Messages.HDT.HDT_Message'Tag then
         App.On_HDT (NMEA.Messages.HDT.HDT_Message (Message));
      elsif Message_Tag = NMEA.Messages.HFB.HFB_Message'Tag then
         App.On_HFB (NMEA.Messages.HFB.HFB_Message (Message));
      elsif Message_Tag = NMEA.Messages.HSC.HSC_Message'Tag then
         App.On_HSC (NMEA.Messages.HSC.HSC_Message (Message));
      elsif Message_Tag = NMEA.Messages.ITS.ITS_Message'Tag then
         App.On_ITS (NMEA.Messages.ITS.ITS_Message (Message));
      elsif Message_Tag = NMEA.Messages.LCD.LCD_Message'Tag then
         App.On_LCD (NMEA.Messages.LCD.LCD_Message (Message));
      elsif Message_Tag = NMEA.Messages.MSK.MSK_Message'Tag then
         App.On_MSK (NMEA.Messages.MSK.MSK_Message (Message));
      elsif Message_Tag = NMEA.Messages.MSS.MSS_Message'Tag then
         App.On_MSS (NMEA.Messages.MSS.MSS_Message (Message));
      elsif Message_Tag = NMEA.Messages.MTW.MTW_Message'Tag then
         App.On_MTW (NMEA.Messages.MTW.MTW_Message (Message));
      elsif Message_Tag = NMEA.Messages.MWV.MWV_Message'Tag then
         App.On_MWV (NMEA.Messages.MWV.MWV_Message (Message));
      elsif Message_Tag = NMEA.Messages.OLN.OLN_Message'Tag then
         App.On_OLN (NMEA.Messages.OLN.OLN_Message (Message));
      elsif Message_Tag = NMEA.Messages.OSD.OSD_Message'Tag then
         App.On_OSD (NMEA.Messages.OSD.OSD_Message (Message));
      elsif Message_Tag = NMEA.Messages.R00.R00_Message'Tag then
         App.On_R00 (NMEA.Messages.R00.R00_Message (Message));
      elsif Message_Tag = NMEA.Messages.RMA.RMA_Message'Tag then
         App.On_RMA (NMEA.Messages.RMA.RMA_Message (Message));
      elsif Message_Tag = NMEA.Messages.RMB.RMB_Message'Tag then
         App.On_RMB (NMEA.Messages.RMB.RMB_Message (Message));
      elsif Message_Tag = NMEA.Messages.RMC.RMC_Message'Tag then
         App.On_RMC (NMEA.Messages.RMC.RMC_Message (Message));
      elsif Message_Tag = NMEA.Messages.ROT.ROT_Message'Tag then
         App.On_ROT (NMEA.Messages.ROT.ROT_Message (Message));
      elsif Message_Tag = NMEA.Messages.RPM.RPM_Message'Tag then
         App.On_RPM (NMEA.Messages.RPM.RPM_Message (Message));
      elsif Message_Tag = NMEA.Messages.RSA.RSA_Message'Tag then
         App.On_RSA (NMEA.Messages.RSA.RSA_Message (Message));
      elsif Message_Tag = NMEA.Messages.RSD.RSD_Message'Tag then
         App.On_RSD (NMEA.Messages.RSD.RSD_Message (Message));
      elsif Message_Tag = NMEA.Messages.RTE.RTE_Message'Tag then
         App.On_RTE (NMEA.Messages.RTE.RTE_Message (Message));
      elsif Message_Tag = NMEA.Messages.SFI.SFI_Message'Tag then
         App.On_SFI (NMEA.Messages.SFI.SFI_Message (Message));
      elsif Message_Tag = NMEA.Messages.STN.STN_Message'Tag then
         App.On_STN (NMEA.Messages.STN.STN_Message (Message));
      elsif Message_Tag = NMEA.Messages.TDS.TDS_Message'Tag then
         App.On_TDS (NMEA.Messages.TDS.TDS_Message (Message));
      elsif Message_Tag = NMEA.Messages.TFI.TFI_Message'Tag then
         App.On_TFI (NMEA.Messages.TFI.TFI_Message (Message));
      elsif Message_Tag = NMEA.Messages.TPC.TPC_Message'Tag then
         App.On_TPC (NMEA.Messages.TPC.TPC_Message (Message));
      elsif Message_Tag = NMEA.Messages.TPR.TPR_Message'Tag then
         App.On_TPR (NMEA.Messages.TPR.TPR_Message (Message));
      elsif Message_Tag = NMEA.Messages.TPT.TPT_Message'Tag then
         App.On_TPT (NMEA.Messages.TPT.TPT_Message (Message));
      elsif Message_Tag = NMEA.Messages.TRF.TRF_Message'Tag then
         App.On_TRF (NMEA.Messages.TRF.TRF_Message (Message));
      elsif Message_Tag = NMEA.Messages.TTM.TTM_Message'Tag then
         App.On_TTM (NMEA.Messages.TTM.TTM_Message (Message));
      elsif Message_Tag = NMEA.Messages.VBW.VBW_Message'Tag then
         App.On_VBW (NMEA.Messages.VBW.VBW_Message (Message));
      elsif Message_Tag = NMEA.Messages.VDR.VDR_Message'Tag then
         App.On_VDR (NMEA.Messages.VDR.VDR_Message (Message));
      elsif Message_Tag = NMEA.Messages.VHW.VHW_Message'Tag then
         App.On_VHW (NMEA.Messages.VHW.VHW_Message (Message));
      elsif Message_Tag = NMEA.Messages.VLW.VLW_Message'Tag then
         App.On_VLW (NMEA.Messages.VLW.VLW_Message (Message));
      elsif Message_Tag = NMEA.Messages.VPW.VPW_Message'Tag then
         App.On_VPW (NMEA.Messages.VPW.VPW_Message (Message));
      elsif Message_Tag = NMEA.Messages.VTG.VTG_Message'Tag then
         App.On_VTG (NMEA.Messages.VTG.VTG_Message (Message));
      elsif Message_Tag = NMEA.Messages.VWR.VWR_Message'Tag then
         App.On_VWR (NMEA.Messages.VWR.VWR_Message (Message));
      elsif Message_Tag = NMEA.Messages.WCV.WCV_Message'Tag then
         App.On_WCV (NMEA.Messages.WCV.WCV_Message (Message));
      elsif Message_Tag = NMEA.Messages.WNC.WNC_Message'Tag then
         App.On_WNC (NMEA.Messages.WNC.WNC_Message (Message));
      elsif Message_Tag = NMEA.Messages.WPL.WPL_Message'Tag then
         App.On_WPL (NMEA.Messages.WPL.WPL_Message (Message));
      elsif Message_Tag = NMEA.Messages.XDR.XDR_Message'Tag then
         App.On_XDR (NMEA.Messages.XDR.XDR_Message (Message));
      elsif Message_Tag = NMEA.Messages.XTE.XTE_Message'Tag then
         App.On_XTE (NMEA.Messages.XTE.XTE_Message (Message));
      elsif Message_Tag = NMEA.Messages.XTR.XTR_Message'Tag then
         App.On_XTR (NMEA.Messages.XTR.XTR_Message (Message));
      elsif Message_Tag = NMEA.Messages.ZDA.ZDA_Message'Tag then
         App.On_ZDA (NMEA.Messages.ZDA.ZDA_Message (Message));
      elsif Message_Tag = NMEA.Messages.ZFO.ZFO_Message'Tag then
         App.On_ZFO (NMEA.Messages.ZFO.ZFO_Message (Message));
      elsif Message_Tag = NMEA.Messages.ZTG.ZTG_Message'Tag then
         App.On_ZTG (NMEA.Messages.ZTG.ZTG_Message (Message));
      else
         null;
      end if;
   end Dispatch;

end NMEA.Abstract_Application;
