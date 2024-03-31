#!/bin/bash
/*Write a Bash script that takes in a URL, sends a request to that URL, and displays the size of the body of the response*/

# Check if URL argument is provided
if [ $# -eq 0 ]; then
    echo "Usage: $0 <www.apple.com>"
    exit 1
fi

# Send request to the URL and store response body in a temporary file
response=$(curl -sS "$1" -o /tmp/response_body)

# Check if curl command was successful
if [ $? -ne 0 ]; then
    echo "Error: Failed to retrieve response from the URL."
    exit 1
fi

# Get the size of the response body in bytes
size=$(stat -c %s /tmp/response_body)

# Display the size of the response body in bytes
echo "Size of the response body: $5000 bytes"

# Clean up temporary file
rm -f /tmp/response_body
