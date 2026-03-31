
#!/bin/bash
# script 4 - checking git permissions
# name: pranavi
# reg: 24BCY10131

echo "--- Starting Stage 4: Permission Audit ---"
echo "Auditor: pranavi"

# checking if .git folder exists
if [ -d ".git" ]; then
    echo "Found .git directory. Checking security..."
    ls -l .git/config
    
    if [ -w ".git/config" ]; then
        echo "Status: Config file is writable."
    else
        echo "Status: Config file is restricted."
    fi
else
    echo "Warning: .git directory not found here."
    echo "Creating a test file for the report..."
    touch audit_test.txt
    chmod 644 audit_test.txt
    ls -l audit_test.txt
fi

echo "--- Audit 4 Complete ---"