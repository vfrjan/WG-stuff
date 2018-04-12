CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_ACCEPT"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_ACCEPTRES"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_ACTION"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_ACTION_SERIAL"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_ACTION_SERIALNO"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_ACTION_VER"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_ACTION_VERSION"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_ADEPROM_PAR"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_APPR_EVENT"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_APPR_MACRO"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_APPR_MSG"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_APPR_REPAIR"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_APPR_SINGLE"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_APPR_STATE"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_AUXPW_PAR"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_CALDENY"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_CALIBRATE"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_CALVER_PAR"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_CMD_L_PARAM"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_CMD_L_RES"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_CONN_PAR"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_DCOFF_PAR"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_DEPTHCAL"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_DEPTH_PAR"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_DEPTH_PAR2"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_DEPTH_PAR3"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_DNS_GACC_FAIL"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_DNS_I_PARAM"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_DNS_I_RES"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_DNS_R_PARAM"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_DNS_R_RES"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_DRVMSG"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_EPCONF_CABLELEN"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_EPCONF_DATA"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_EPCONF_DEF"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_EPCONF_DEFS"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_EPCONF_REV"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_EPCONF_REVS"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_EPROM"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_EPROM_PAR"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_EPVER_PAR"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_EPVER_RES"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_EVENT"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_EXTRA"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_EXTRA_FUNC"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_GACC_PAR"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_GACC_RES"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_H3D_GACC_FAIL"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_HYDPHASE_PAR"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_HYD_C_PARAM"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_HYD_C_RES"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_HYD_DATA"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_HYD_DATA_060118"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_HYD_DATA_DUMP"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_HYD_PAR"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_HYD_POS_DMP"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_HYD_POS_DUMP"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_HYD_POS_LAM"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_HYD_POS_SGP"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_HYD_POS_TMP"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_HYD_POS_UNDO"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_HYD_POS_UNDO_KA"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_HYD_POS_X_NEW"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_HYD_R_PARAM"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_HYD_R_RES"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_HYD_SET"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_HYD_SET_CHANGE"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_HYD_SET_DMP"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_HYD_SET_DUMP"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_HYD_SET_LAM"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_HYD_SET_MAL"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_HYD_SET_SGP"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_HYD_SET_TMP"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_HYD_SET_UNDO_KA"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_HYD_XPOS"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_IDTAG_PAR"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_INIT_PAR"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_INIT_PAR2"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_INIT_PAR3"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_INIT_RES"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_INP_PAR"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_INP_RES"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_INSUL_PARAM"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_INSUL_RES"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_IRMARMS_PAR"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_IRMASIG_PAR"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_IVIS_LOG"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_IVIS_NAME"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_IVIS_PAR"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_IVIS_RES"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_IVIS_TEST_HDR"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_IVIS_TEST_LPROT"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_IVIS_TEST_SUM"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_IVIS_TEST_VALUE"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_IVIS_VERSION"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_IVIS_VERSION_FILE"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_IVIS_VERSION_FILE_TYPE"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_KEROS_PARAM"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_KEROS_RES"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_LEAK_PAR"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_LINK"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_LINK_PAR"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_MACRO"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_MANINP"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_MANINP_CURRENT"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_MANINP_DEF"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_MANUA_PARAM"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_MANUA_RES"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_NOCR_CONTROL"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_NOCR_DEFAULT"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_NOCR_LINK"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_OPTION"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_OPTLOSS_PAR"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_PHASE_PAR"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_PODIS_PAR"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_PULSE_PAR"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_RES"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_RESIS_PARAM"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_RESIS_RES"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_RMS_PAR"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_RMS_RES"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_RXPHASE"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_SENSCAL"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_SENSO_PARAM"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_SENSO_RES"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_SERCK_PARAM"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_SERCK_RES"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_SERIA"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_SERIAL_REF"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_SERTAB_TULL"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_SERTAB_X"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_SERTAB_Y"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_SER_REP"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_SINGLE"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_SM_HARDWARE"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_SM_INS_SETUP"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_SM_RESNET"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_SM_SETUP"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_SM_STAGE"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_SM_TRANSFORM"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_SM_TYPE"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_SM_WIRE"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_SNM_ERROR"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_SNSER_PAR"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_SNSETUP"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_SN_HYD_PHASE_G32"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_STATUS_PAR"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_SUBLOG"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_SUBLOG_REF"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_SUB_FAULT"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_SUB_FAULTDESC"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_SUB_FAULTTYPE"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_SUB_FAULTTYPES"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_SUB_MAIN"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_SUB_PARTCOMB"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_SUB_PARTS"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_SUB_REF"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_SUB_SER"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_SUB_SUBTYPE"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_SUB_XPART"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_SWI_ERR_HDR"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_SWI_ERR_LOG"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_SWI_ERR_TYPE"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_TEMPC_PAR"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_TEMP_CYCLE"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_TEST_STATUS_DATA"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_TEST_STATUS_TYPE"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_THD_PAR"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_THD_RES"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_VERSION"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_VERSION_FILE"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_XFEED_PAR"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_YYY_PARAM"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_YYY_RES"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."DNS_ser"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."HYD_DATA_SN_FOR_DELETE"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."HYD_DEF_EXP"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."HYD_POS_TEMPLATE"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."INS_SETUP_TMP"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."KA_HYD_POS"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."REC_TEST_NOISE1"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."REC_TEST_THD1"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."REC_TEST_THD12"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."REC_TEST_THD6"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."RMS_X2"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."RXPHASE_UPDATE"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."SENSCAL"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."STRETCH_HYD_POS"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG 
    ON "DNS"."STRETCH_HYD_SET"
TABLESPACE "DNS_DATA"
WITH PRIMARY KEY
EXCLUDING NEW VALUES;