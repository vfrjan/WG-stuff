#!/bin/sh
OF=repadm-mvlogs-PROD.sql
for table in `cat PROD_TABLES`;do
echo "CREATE MATERIALIZED VIEW LOG " >> $OF
echo "    ON \"PROD\".\"$table\"" >> $OF
echo "TABLESPACE \"PRODUCTION\""  >> $OF
echo "WITH PRIMARY KEY"  >> $OF
echo "EXCLUDING NEW VALUES;" >> $OF
done

