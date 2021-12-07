#!/usr/bin/env 

REPORT_DATE=$(date +"%Y_%m_%dT%H_%M_%S")



k6 run --config config.json --out json="reports/report_$REPORT_DATE.json" tests/main.js

