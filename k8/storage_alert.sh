#!/bin/bash

THRESHOLD=60                   # Set disk usage threshold
FS_LIST="fs_list.txt"          # File containing list of file systems
EMAIL="admin@example.com"      # Replace with your email
SUBJECT="Storage Alert: High Disk Usage"

ALERT_MESSAGE=""               # Variable to store alert details

# Loop through each file system in the list
while read -r FS; do
    if [[ -n "$FS" ]]; then    # Ensure FS is not empty
        USAGE=$(df -h "$FS" | awk 'NR==2 {print $5}' | sed 's/%//')  # Get usage percentage

        if (( USAGE >= THRESHOLD )); then
            ALERT_MESSAGE+="Filesystem: $FS is at ${USAGE}%\n"  # Append to alert message
        fi
    fi
done < "$FS_LIST"

# Send email if there are alerts
if [[ -n "$ALERT_MESSAGE" ]]; then
    echo -e "The following file systems have exceeded ${THRESHOLD}% usage:\n\n$ALERT_MESSAGE" | mail -s "$SUBJECT" "$EMAIL"
fi
