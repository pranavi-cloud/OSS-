
#!/bin/bash
# Script 2: Software Dependency Audit
# Author: pranavi (24BCY10131)

STUDENT_NAME="pranavi"
REG_NO="24BCY10131"
TARGET_SOFTWARE="git"

echo "----------------------------------------"
echo "    STAGE 2: SOFTWARE INSTALLATION CHECK"
echo "----------------------------------------"
echo "Auditor: $STUDENT_NAME ($REG_NO)"

# This check makes the script look professional
if command -v $TARGET_SOFTWARE &> /dev/null
then
    VERSION=$($TARGET_SOFTWARE --version)
    LOCATION=$(which $TARGET_SOFTWARE)
    echo "[STATUS] SUCCESS: $TARGET_SOFTWARE is installed."
    echo "[INFO]   Version : $VERSION"
    echo "[INFO]   Location: $LOCATION"
else
    echo "[STATUS] FAILED: $TARGET_SOFTWARE was not found."
    echo "Please install Git to complete the audit."
fi

echo "----------------------------------------"
echo "Audit Task 2 Complete."