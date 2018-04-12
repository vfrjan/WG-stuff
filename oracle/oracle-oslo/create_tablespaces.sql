connect / as sysdba
create tablespace "PRODUCTION" logging
datafile '/u02/oradata/FJRD/PRODUCTION.ora' size 100M reuse autoextend
on next 10M extent management local ;
create tablespace "SOL_DATA" logging
datafile '/u02/oradata/FJRD/SOL_DATA.ora' size 100M reuse autoextend
on next 10M extent management local ;
create tablespace "SOL_IND" logging
datafile '/u02/oradata/FJRD/SOL_IND.ora' size 100M reuse autoextend
on next 10M extent management local ;
create tablespace "IVIS_DATA" logging
datafile '/u02/oradata/FJRD/IVIS_DATA.ora' size 100M reuse autoextend
on next 10M extent management local ;
create tablespace "IVIS_IND" logging
datafile '/u02/oradata/FJRD/IVIS_IND.ora' size 100M reuse autoextend
on next 10M extent management local ;
create tablespace "DNS_DATA" logging
datafile '/u02/oradata/FJRD/DNS_DATA.ora' size 100M reuse autoextend
on next 10M extent management local ;
create tablespace "DNS_IND" logging
datafile '/u02/oradata/FJRD/DNS_IND.ora' size 100M reuse autoextend
on next 10M extent management local ;
create tablespace "ITXD_DATA" logging
datafile '/u02/oradata/FJRD/ITXD_DATA.ora' size 100M reuse autoextend
on next 10M extent management local ;
create tablespace "ITXD_IND" logging
datafile '/u02/oradata/FJRD/ITXD_IND.ora' size 100M reuse autoextend
on next 10M extent management local ;
create tablespace "ASIP_DATA" logging
datafile '/u02/oradata/FJRD/ASIP_DATA.ora' size 100M reuse autoextend
on next 10M extent management local ;
create tablespace "ASIP_IND" logging
datafile '/u02/oradata/FJRD/ASIP_IND.ora' size 100M reuse autoextend
on next 10M extent management local ;
create tablespace "ASI2_DATA" logging
datafile '/u02/oradata/FJRD/ASI2_DATA.ora' size 100M reuse autoextend
on next 10M extent management local ;
create tablespace "ASI2_IND" logging
datafile '/u02/oradata/FJRD/ASI2_IND.ora' size 100M reuse autoextend
on next 10M extent management local ;
create tablespace "DGS16_DATA" logging
datafile '/u02/oradata/FJRD/DGS16_DATA.ora' size 100M reuse autoextend
on next 10M extent management local ;
create tablespace "DGS16_IND" logging
datafile '/u02/oradata/FJRD/DGS16_IND.ora' size 100M reuse autoextend
on next 10M extent management local ;
create tablespace "DMC_DATA" logging
datafile '/u02/oradata/FJRD/DMC_DATA.ora' size 100M reuse autoextend
on next 10M extent management local ;
create tablespace "DMC_IND" logging
datafile '/u02/oradata/FJRD/DMC_IND.ora' size 100M reuse autoextend
on next 10M extent management local ;
create tablespace "ADS_DATA" logging
datafile '/u02/oradata/FJRD/ADS_DATA.ora' size 100M reuse autoextend
on next 10M extent management local ;
create tablespace "ADS_IND" logging
datafile '/u02/oradata/FJRD/ADS_IND.ora' size 100M reuse autoextend
on next 10M extent management local ;
create tablespace "H3D_DATA" logging
datafile '/u02/oradata/FJRD/H3D_DATA.ora' size 100M reuse autoextend
on next 10M extent management local ;
create tablespace "H3D_IND" logging
datafile '/u02/oradata/FJRD/H3D_IND.ora' size 100M reuse autoextend
on next 10M extent management local ;
create tablespace "ITO_DATA" logging
datafile '/u02/oradata/FJRD/ITO_DATA.ora' size 100M reuse autoextend
on next 10M extent management local ;
create tablespace "ITO_IND" logging
datafile '/u02/oradata/FJRD/ITO_IND.ora' size 100M reuse autoextend
on next 10M extent management local ;
create tablespace "SNXCBL_DATA" logging
datafile '/u02/oradata/FJRD/SNXCBL_DATA.ora' size 100M reuse autoextend
on next 10M extent management local ;
create tablespace "SNXCBL_IND" logging
datafile '/u02/oradata/FJRD/SNXCBL_IND.ora' size 100M reuse autoextend
on next 10M extent management local ;
create tablespace "FIX_DATA" logging
datafile '/u02/oradata/FJRD/FIX_DATA.ora' size 100M reuse autoextend
on next 10M extent management local ;
create tablespace "REPORTS_DATA" logging
datafile '/u02/oradata/FJRD/REPORTS_DATA.ora' size 100M reuse autoextend
on next 10M extent management local ;
create tablespace "REPORT_IND" logging
datafile '/u02/oradata/FJRD/REPORT_IND.ora' size 100M reuse autoextend
on next 10M extent management local ;
create tablespace "FMSG_DATA" logging
datafile '/u02/oradata/FJRD/FMSG_DATA.ora' size 100M reuse autoextend
on next 10M extent management local ;
create tablespace "FMSG_IND" logging
datafile '/u02/oradata/FJRD/FMSG_IND.ora' size 100M reuse autoextend
on next 10M extent management local ;
create tablespace "CABLE_DATA" logging
datafile '/u02/oradata/FJRD/CABLE_DATA.ora' size 100M reuse autoextend
on next 10M extent management local ;
create tablespace "CABLE_IND" logging
datafile '/u02/oradata/FJRD/CABLE_IND.ora' size 100M reuse autoextend
on next 10M extent management local ;
create tablespace "ACT_DATA" logging
datafile '/u02/oradata/FJRD/ACT_DATA.ora' size 100M reuse autoextend
on next 10M extent management local ;
create tablespace "ACT_IND" logging
datafile '/u02/oradata/FJRD/ACT_IND.ora' size 100M reuse autoextend
on next 10M extent management local ;
create tablespace "S4D_DATA" logging
datafile '/u02/oradata/FJRD/S4D_DATA.ora' size 100M reuse autoextend
on next 10M extent management local ;
create tablespace "S4D_IND" logging
datafile '/u02/oradata/FJRD/S4D_IND.ora' size 100M reuse autoextend
on next 10M extent management local ;
create tablespace "SDNS_DATA" logging
datafile '/u02/oradata/FJRD/SDNS_DATA.ora' size 100M reuse autoextend
on next 10M extent management local ;
create tablespace "SDNS_IND" logging
datafile '/u02/oradata/FJRD/SDNS_IND.ora' size 100M reuse autoextend
on next 10M extent management local ;
create tablespace "NOCR_DATA" logging
datafile '/u02/oradata/FJRD/NOCR_DATA.ora' size 100M reuse autoextend
on next 10M extent management local ;
create tablespace "NOCR_IND" logging
datafile '/u02/oradata/FJRD/NOCR_IND.ora' size 100M reuse autoextend
on next 10M extent management local ;
create tablespace "PRODTEST_DATA" logging
datafile '/u02/oradata/FJRD/PRODTEST_DATA.ora' size 100M reuse autoextend
on next 10M extent management local ;
create tablespace "PRODTEST_IND" logging
datafile '/u02/oradata/FJRD/PRODTEST_IND.ora' size 100M reuse autoextend
on next 10M extent management local ;
create tablespace "HYDTEST_DATA" logging
datafile '/u02/oradata/FJRD/HYDTEST_DATA.ora' size 100M reuse autoextend
on next 10M extent management local ;
create tablespace "HYDTEST_IND" logging
datafile '/u02/oradata/FJRD/HYDTEST_IND.ora' size 100M reuse autoextend
on next 10M extent management local ;
create tablespace "ASDNS_DATA" logging
datafile '/u02/oradata/FJRD/ASDNS_DATA.ora' size 100M reuse autoextend
on next 10M extent management local ;
create tablespace "ASDNS_IND" logging
datafile '/u02/oradata/FJRD/ASDNS_IND.ora' size 100M reuse autoextend
on next 10M extent management local ;
create tablespace "XX_DATA" logging
datafile '/u02/oradata/FJRD/XX_DATA.ora' size 100M reuse autoextend
on next 10M extent management local ;
create tablespace "XX_IND" logging
datafile '/u02/oradata/FJRD/XX_IND.ora' size 100M reuse autoextend
on next 10M extent management local ;
create tablespace "LANDTEST_DATA" logging
datafile '/u02/oradata/FJRD/LANDTEST_DATA.ora' size 100M reuse autoextend
on next 10M extent management local ;
create tablespace "LANDTEST_IND" logging
datafile '/u02/oradata/FJRD/LANDTEST_IND.ora' size 100M reuse autoextend
on next 10M extent management local ;
create tablespace "DGSS_DATA" logging
datafile '/u02/oradata/FJRD/DGSS_DATA.ora' size 100M reuse autoextend
on next 10M extent management local ;
create tablespace "DGSS_IND" logging
datafile '/u02/oradata/FJRD/DGSS_IND.ora' size 100M reuse autoextend
on next 10M extent management local ;
create tablespace "DGS_DATA" logging
datafile '/u02/oradata/FJRD/DGS_DATA.ora' size 100M reuse autoextend
on next 10M extent management local ;
create tablespace "DGS_IND" logging
datafile '/u02/oradata/FJRD/DGS_IND.ora' size 100M reuse autoextend
on next 10M extent management local ;
create tablespace "ITOS_DATA" logging
datafile '/u02/oradata/FJRD/ITOS_DATA.ora' size 100M reuse autoextend
on next 10M extent management local ;
create tablespace "ITOS_IND" logging
datafile '/u02/oradata/FJRD/ITOS_IND.ora' size 100M reuse autoextend
on next 10M extent management local ;
create tablespace "ITOCS_DATA" logging
datafile '/u02/oradata/FJRD/ITOCS_DATA.ora' size 100M reuse autoextend
on next 10M extent management local ;
create tablespace "ITOCS_IND" logging
datafile '/u02/oradata/FJRD/ITOCS_IND.ora' size 100M reuse autoextend
on next 10M extent management local ;
create tablespace "STP_DATA" logging
datafile '/u02/oradata/FJRD/STP_DATA.ora' size 100M reuse autoextend
on next 10M extent management local ;
create tablespace "STP_IND" logging
datafile '/u02/oradata/FJRD/STP_IND.ora' size 100M reuse autoextend
on next 10M extent management local ;
create tablespace "ITXR_DATA" logging
datafile '/u02/oradata/FJRD/ITXR_DATA.ora' size 100M reuse autoextend
on next 10M extent management local ;
create tablespace "ITXR_IND" logging
datafile '/u02/oradata/FJRD/ITXR_IND.ora' size 100M reuse autoextend
on next 10M extent management local ;
create tablespace "QMS_DATA" logging
datafile '/u02/oradata/FJRD/QMS_DATA.ora' size 100M reuse autoextend
on next 10M extent management local ;
create tablespace "QMS_IND" logging
datafile '/u02/oradata/FJRD/QMS_IND.ora' size 100M reuse autoextend
on next 10M extent management local ;
create tablespace "EFFS_DATA" logging
datafile '/u02/oradata/FJRD/EFFS_DATA.ora' size 100M reuse autoextend
on next 10M extent management local ;
create tablespace "EFFS_IND" logging
datafile '/u02/oradata/FJRD/EFFS_IND.ora' size 100M reuse autoextend
on next 10M extent management local ;
create tablespace "TREND_DATA" logging
datafile '/u02/oradata/FJRD/TREND_DATA.ora' size 100M reuse autoextend
on next 10M extent management local ;
create tablespace "TREND_IND" logging
datafile '/u02/oradata/FJRD/TREND_IND.ora' size 100M reuse autoextend
on next 10M extent management local ;
create tablespace "PSOL_DATA" logging
datafile '/u02/oradata/FJRD/PSOL_DATA.ora' size 100M reuse autoextend
on next 10M extent management local ;
create tablespace "PSOL_IND" logging
datafile '/u02/oradata/FJRD/PSOL_IND.ora' size 100M reuse autoextend
on next 10M extent management local ;
create tablespace "MAMS_DATA" logging
datafile '/u02/oradata/FJRD/MAMS_DATA.ora' size 100M reuse autoextend
on next 10M extent management local ;
create tablespace "MAMS_IND" logging
datafile '/u02/oradata/FJRD/MAMS_IND.ora' size 100M reuse autoextend
on next 10M extent management local ;
create tablespace "YIELD_DATA" logging
datafile '/u02/oradata/FJRD/YIELD_DATA.ora' size 100M reuse autoextend
on next 10M extent management local ;
create tablespace "SQM5_DATA" logging
datafile '/u02/oradata/FJRD/SQM5_DATA.ora' size 100M reuse autoextend
on next 10M extent management local ;
create tablespace "SQM5_IND" logging
datafile '/u02/oradata/FJRD/SQM5_IND.ora' size 100M reuse autoextend
on next 10M extent management local ;
create BIGFILE tablespace "EM_DATA" logging
datafile '/u02/oradata/FJRD/EM_DATA.ora' size 100M reuse autoextend
on next 10M extent management local ;
create tablespace "EM_IND" logging
datafile '/u02/oradata/FJRD/EM_IND.ora' size 100M reuse autoextend
on next 10M extent management local ;
create tablespace "STAT_DATA" logging
datafile '/u02/oradata/FJRD/STAT_DATA.ora' size 100M reuse autoextend
on next 10M extent management local ;
create tablespace "DASHBOARD_DATA" logging
datafile '/u02/oradata/FJRD/DASHBOARD_DATA.ora' size 100M reuse autoextend
on next 10M extent management local ;
create tablespace "HYDR_DATA" logging
datafile '/u02/oradata/FJRD/HYDR_DATA.ora' size 100M reuse autoextend
on next 10M extent management local ;
create tablespace "HYDR_IND" logging
datafile '/u02/oradata/FJRD/HYDR_IND.ora' size 100M reuse autoextend
on next 10M extent management local ;
create tablespace "FWDATA" logging
datafile '/u02/oradata/FJRD/FWDATA.ora' size 100M reuse autoextend
on next 10M extent management local ;
create tablespace "GAC_DATA" logging
datafile '/u02/oradata/FJRD/GAC_DATA.ora' size 100M reuse autoextend
on next 10M extent management local ;
create tablespace "GAC_IND" logging
datafile '/u02/oradata/FJRD/GAC_IND.ora' size 100M reuse autoextend
on next 10M extent management local ;
create tablespace "SN6_DATA" logging
datafile '/u02/oradata/FJRD/SN6_DATA.ora' size 100M reuse autoextend
on next 10M extent management local ;
create tablespace "SN6_IND" logging
datafile '/u02/oradata/FJRD/SN6_IND.ora' size 100M reuse autoextend
on next 10M extent management local ;
create tablespace "SU_DATA" logging
datafile '/u02/oradata/FJRD/SU_DATA.ora' size 100M reuse autoextend
on next 10M extent management local ;
create tablespace "SU_IND" logging
datafile '/u02/oradata/FJRD/SU_IND.ora' size 100M reuse autoextend
on next 10M extent management local ;
create tablespace "SUS_DATA" logging
datafile '/u02/oradata/FJRD/SUS_DATA.ora' size 100M reuse autoextend
on next 10M extent management local ;
create tablespace "SUS_IND" logging
datafile '/u02/oradata/FJRD/SUS_IND.ora' size 100M reuse autoextend
on next 10M extent management local ;
create tablespace "EQUIPMENT" logging
datafile '/u02/oradata/FJRD/EQUIPMENT.ora' size 100M reuse autoextend
on next 10M extent management local ;
create tablespace "SLV_DATA" logging
datafile '/u02/oradata/FJRD/SLV_DATA.ora' size 100M reuse autoextend
on next 10M extent management local ;
create tablespace "SLV_IND" logging
datafile '/u02/oradata/FJRD/SLV_IND.ora' size 100M reuse autoextend
on next 10M extent management local ;
create tablespace "MSA_DATA" logging
datafile '/u02/oradata/FJRD/MSA_DATA.ora' size 100M reuse autoextend
on next 10M extent management local ;
create tablespace "MSA_IND" logging
datafile '/u02/oradata/FJRD/MSA_IND.ora' size 100M reuse autoextend
on next 10M extent management local ;
