#!/bin/bash

# LOG_DIR="/path/to/log/directory"
LOG_DIR="."

ERROR_CODE="500"
TIME_WINDOW=10

current_time=$(date +"%s")
time_limit=$((current_time - (TIME_WINDOW * 60)))

for log_file in "$LOG_DIR"/*.log; do
    # error_count=$(grep -c "HTTP $ERROR_CODE" "$log_file")
    error_count=$(grep -c " $ERROR_CODE " "$log_file")
    echo "There were $error_count HTTP $ERROR_CODE errors in $log_file in the last $TIME_WINDOW minutes."
done

