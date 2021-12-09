#!/usr/bin/env 

REPORT_DATE=$(date +"%Y_%m_%dT%H_%M_%S")

if [ -d "reports" ]; then
    echo "Directory reports already exists"
else
    mkdir reports
    echo "Directory reports created"
fi

echo "Enter testing type: "
read x

if [ $x == "load" ]
  then
    echo "load testing"
    k6 run --config config/load.json --out json="reports/report_load_$REPORT_DATE.json" tests/main.js
    exit 1
elif [ $x == "spike" ]
  then
    echo "spike testing"
    k6 run --config config/spike.json --out json="reports/report_spike_$REPORT_DATE.json" tests/main.js
    exit 1
elif [ $x == "stress" ]
  then
    echo "stress testing"
    k6 run --config config/stress.json --out json="reports/report_stress_$REPORT_DATE.json" tests/main.js
    exit 1
elif [ $x == "soak" ]
  then
    echo "soak testing"
    k6 run --config config/soak.json --out json="reports/report_soak_$REPORT_DATE.json" tests/main.js
    exit 1
elif [ $x == "smoke" ]
  then
    echo "smoke testing"
    k6 run --config config/smoke.json --out json="reports/report_smoke_$REPORT_DATE.json" tests/main.js
    exit 1
else
    echo "invalid argument"
    exit 1
fi
