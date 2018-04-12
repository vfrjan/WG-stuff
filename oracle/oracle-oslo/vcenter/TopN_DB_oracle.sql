/* *************************************************************************
 * Copyright 2008 VMware, Inc.   All rights reserved. -- VMware Confidential
 * *************************************************************************/
 
/*==============================================================*/
/* Created: 27.05.2009                                          */
/* Modified: 11.06.2009                                         */
/* Project: VI Ops Management TopN                              */
/* Model: TopN PDM Oracle10g                                    */
/* Company: VMware                                              */
/* Author: Elena Georgieva                                      */
/* Version: 1.0                                                 */
/* Database: Oracle 10g                                         */
/*==============================================================*/


/*==============================================================*/
/* Create tables section                                        */
/*==============================================================*/

/*==============================================================*/
/* Table VPX_TOPN_PAST_DAY                                      */
/*==============================================================*/

CREATE TABLE VPX_TOPN_PAST_DAY(
  COUNTER_ID Number(38,0) NOT NULL,
  SAMPLE_TIME Date NOT NULL,
  INTEGRAL_VALUE Number(38,0) NOT NULL
);

/*==============================================================*/
/* Add keys for table VPX_TOPN_PAST_DAY                         */
/*==============================================================*/

ALTER TABLE VPX_TOPN_PAST_DAY ADD CONSTRAINT PK_VPX_TOPN_PAST_DAY PRIMARY KEY (COUNTER_ID,SAMPLE_TIME);

/*==============================================================*/
/* Table and Columns comments section                           */
/*==============================================================*/

COMMENT ON TABLE VPX_TOPN_PAST_DAY IS 'Corresponds to VPX_HIST_STAT1 and stores integral values at the lowest level of granularity (daily level) ' ;
COMMENT ON COLUMN VPX_TOPN_PAST_DAY.COUNTER_ID IS 'Counter Identifier - Defines statistic for a given device of an object' ;
COMMENT ON COLUMN VPX_TOPN_PAST_DAY.SAMPLE_TIME IS 'Date and time at lowest level of granularity (daily) - represents data with 5 minutes frequency of actuality' ;
COMMENT ON COLUMN VPX_TOPN_PAST_DAY.INTEGRAL_VALUE IS 'Integral Value' ;

/*==============================================================*/
/* Table VPX_TOPN_PAST_WEEK                                     */
/*==============================================================*/

CREATE TABLE VPX_TOPN_PAST_WEEK(
  COUNTER_ID Number(38,0) NOT NULL,
  SAMPLE_TIME Date NOT NULL,
  INTEGRAL_VALUE Number(38,0) NOT NULL
);

/*==============================================================*/
/* Add keys for table VPX_TOPN_PAST_WEEK                        */
/*==============================================================*/

ALTER TABLE VPX_TOPN_PAST_WEEK ADD CONSTRAINT PK_VPX_TOPN_PAST_WEEK PRIMARY KEY (COUNTER_ID,SAMPLE_TIME);

/*==============================================================*/
/* Table and Columns comments section                           */
/*==============================================================*/

COMMENT ON TABLE VPX_TOPN_PAST_WEEK IS 'Corresponds to VPX_HIST_STAT2 and stores integral values at the weekly level of granularity' ;
COMMENT ON COLUMN VPX_TOPN_PAST_WEEK.COUNTER_ID IS 'Counter Identifier - Defines statistic for a given device of an object' ;
COMMENT ON COLUMN VPX_TOPN_PAST_WEEK.SAMPLE_TIME IS 'Date and time at weekly level of granularity - represents data with 30 minutes frequency of actuality' ;
COMMENT ON COLUMN VPX_TOPN_PAST_WEEK.INTEGRAL_VALUE IS 'Integral Value' ;

/*==============================================================*/
/* Table VPX_TOPN_PAST_MONTH                                    */
/*==============================================================*/

CREATE TABLE VPX_TOPN_PAST_MONTH(
  COUNTER_ID Number(38,0) NOT NULL,
  SAMPLE_TIME Date NOT NULL,
  INTEGRAL_VALUE Number(38,0) NOT NULL
);

/*==============================================================*/
/* Add keys for table VPX_TOPN_PAST_MONTH                       */
/*==============================================================*/

ALTER TABLE VPX_TOPN_PAST_MONTH ADD CONSTRAINT PK_VPX_TOPN_PAST_MONTH PRIMARY KEY (COUNTER_ID,SAMPLE_TIME);

/*==============================================================*/
/* Table and Columns comments section                           */
/*==============================================================*/

COMMENT ON TABLE VPX_TOPN_PAST_MONTH IS 'Corresponds to VPX_HIST_STAT3 and stores integral values at the monthly level of granularity' ;
COMMENT ON COLUMN VPX_TOPN_PAST_MONTH.COUNTER_ID IS 'Counter Identifier - Defines statistic for a given device of an object' ;
COMMENT ON COLUMN VPX_TOPN_PAST_MONTH.SAMPLE_TIME IS 'Date and time at monthly level of granularity - represents data with 2 hours frequency of actuality' ;
COMMENT ON COLUMN VPX_TOPN_PAST_MONTH.INTEGRAL_VALUE IS 'Integral Value' ;

/*==============================================================*/
/* Table VPX_TOPN_PAST_YEAR                                     */
/*==============================================================*/

CREATE TABLE VPX_TOPN_PAST_YEAR(
  COUNTER_ID Number(38,0) NOT NULL,
  SAMPLE_TIME Date NOT NULL,
  INTEGRAL_VALUE Number(38,0) NOT NULL
);

/*==============================================================*/
/* Add keys for table VPX_TOPN_PAST_YEAR                        */
/*==============================================================*/

ALTER TABLE VPX_TOPN_PAST_YEAR ADD CONSTRAINT PK_VPX_TOPN_PAST_YEAR PRIMARY KEY (COUNTER_ID,SAMPLE_TIME);

/*==============================================================*/
/* Table and Columns comments section                           */
/*==============================================================*/
  
COMMENT ON TABLE VPX_TOPN_PAST_YEAR IS 'Corresponds to VPX_HIST_STAT4 and stores integral values at the yearly level of granularity' ;
COMMENT ON COLUMN VPX_TOPN_PAST_YEAR.COUNTER_ID IS 'Counter Identifier - Defines statistic for a given device of an object' ;
COMMENT ON COLUMN VPX_TOPN_PAST_YEAR.SAMPLE_TIME IS 'Date and time at yearly level of granularity - represents data with 24 hours frequency of actuality' ;
COMMENT ON COLUMN VPX_TOPN_PAST_YEAR.INTEGRAL_VALUE IS 'Integral Value' ;

/*==============================================================*/
/* Table VPX_TOPN_STATISTICS                                    */
/*==============================================================*/

CREATE TABLE VPX_TOPN_STATISTICS(
  STAT_ID Integer NOT NULL
);

/*==============================================================*/
/* Add keys for table VPX_TOPN_STATISTICS                       */
/*==============================================================*/

ALTER TABLE VPX_TOPN_STATISTICS ADD CONSTRAINT PK_VPX_TOPN_STATISTICS PRIMARY KEY (STAT_ID);

/*==============================================================*/
/* Table and Columns comments section                           */
/*==============================================================*/

COMMENT ON TABLE VPX_TOPN_STATISTICS IS 'Contain all the statistics that will support Top N feature' ;
COMMENT ON COLUMN VPX_TOPN_STATISTICS.STAT_ID IS 'Statistic Identifier' ;

/*==============================================================*/
/* Table VPX_TOPN_STATE                                         */
/*==============================================================*/

CREATE TABLE VPX_TOPN_STATE(
  TIME_LEVEL Number(2,0) NOT NULL
        CONSTRAINT CK_VPX_TOPN_STATE CHECK (TIME_LEVEL IN (1, 2, 3, 4)),
  COUNTER_ID Number(38,0) NOT NULL,
  SAMPLE_TIME Date NOT NULL
);

/*==============================================================*/
/* Add keys for table VPX_TOPN_STATE                            */
/*==============================================================*/

ALTER TABLE VPX_TOPN_STATE ADD CONSTRAINT PK_VPX_TOPN_STATE PRIMARY KEY (TIME_LEVEL,COUNTER_ID);

/*==============================================================*/
/* Table and Columns comments section                           */
/*==============================================================*/

COMMENT ON TABLE VPX_TOPN_STATE IS 'Describes current state and time boundary of calculated integral values and is intended to support incremental calculation process and efficient recalculations and recovery' ;
COMMENT ON COLUMN VPX_TOPN_STATE.TIME_LEVEL IS 'Level of Granularity:1 - Daily 2 - Weekly 3 - Monthly 4 - Yearly' ;
COMMENT ON COLUMN VPX_TOPN_STATE.COUNTER_ID IS 'Counter Identifier' ;
COMMENT ON COLUMN VPX_TOPN_STATE.SAMPLE_TIME IS 'Date and time corresponding with VC performance statistics one for the latest calculation' ;

/*==============================================================*/
/* Table VPX_JOB_LOG                                            */
/*==============================================================*/

CREATE TABLE VPX_JOB_LOG(
  JOB_ID Number(5,0) NOT NULL,
  STATUS Varchar2(10 BYTE) DEFAULT 'WAITING' NOT NULL,
  LAST_RUN Timestamp(3) DEFAULT TO_TIMESTAMP('01.01.1900 00:00:00', 'DD.MM.YYYY HH24:MI:SS') NOT NULL
);

/*==============================================================*/
/* Add keys for table VPX_JOB_LOG                               */
/*==============================================================*/

ALTER TABLE VPX_JOB_LOG ADD CONSTRAINT PK_VPX_JOB_LOG PRIMARY KEY (JOB_ID);

/*==============================================================*/
/* Table and Columns comments section                           */
/*==============================================================*/

COMMENT ON TABLE VPX_JOB_LOG IS 'Automated Jobs Log' ;
COMMENT ON COLUMN VPX_JOB_LOG.JOB_ID IS 'Job Identifier' ;
COMMENT ON COLUMN VPX_JOB_LOG.STATUS IS 'Working state/Status' ;
COMMENT ON COLUMN VPX_JOB_LOG.LAST_RUN IS 'Date and time of the last job run' ;

/*==============================================================*/
/* Create relationships section                                 */
/*==============================================================*/

ALTER TABLE VPX_TOPN_STATISTICS ADD CONSTRAINT FK_VPX_STAT_DEF_TOPN_STATS FOREIGN KEY (STAT_ID) REFERENCES VPX_STAT_DEF (ID);
