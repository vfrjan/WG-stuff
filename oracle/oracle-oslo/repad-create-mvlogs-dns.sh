#!/bin/sh
OF=repadm-mvlogs-DNS.sql
for table in `cat DNS_TABLES`;do
echo "CREATE MATERIALIZED VIEW LOG " >> $OF
echo "    ON \"DNS\".\"$table\"" >> $OF
echo "TABLESPACE \"DNS_DATA\""  >> $OF
echo "WITH PRIMARY KEY"  >> $OF
echo "EXCLUDING NEW VALUES;" >> $OF
done

