
#!/bin/bash
# script 3 - log check
# name: pranavi
# reg: 24BCY10131

echo ">>> Scanning System Logs for Audit <<<"
echo "Auditor: pranavi"

# define the log file path
LOG_PATH="/var/log/syslog"

# check if we can actually read the file
if [ ! -r "$LOG_PATH" ]; then
    echo "Notice: System log is restricted. Creating a local test log..."
    LOG_PATH="audit_log_test.log"
    echo "$(date) - ERROR - Connection failed" > $LOG_PATH
    echo "$(date) - WARN - Git update pending" >> $LOG_PATH
    echo "$(date) - INFO - Security check by pranavi" >> $LOG_PATH
fi

echo "Checking file: $LOG_PATH"

# search for errors and count them
errors=$(grep -i -c "error" "$LOG_PATH")
warnings=$(grep -i -c "warn" "$LOG_PATH")

echo "---------------------------------------"
echo "Results:"
echo "Total Errors found: $errors"
echo "Total Warnings found: $warnings"
echo "---------------------------------------"

echo "Log audit finished."