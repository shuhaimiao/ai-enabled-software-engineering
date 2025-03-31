#!/bin/bash

# Script to create an article summary file with template

if [ $# -lt 1 ]; then
  echo "Usage: $0 filename [title]"
  echo "Example: $0 ai-advances \"Recent Advances in AI\""
  exit 1
fi

# Get the filename and title
FILENAME="$1"
TITLE="${2:-${FILENAME//-/ }}"

# Create the file path
FILE_PATH="Articles/${FILENAME}.md"

# Create the file with template
cat > "$FILE_PATH" << EOL
# ${TITLE}

**Author:** [Author Name]  
**Source:** [source_site](https://source_url.com)  
**Date Added:** $(date +%Y-%m-%d)  
**Status:** To Read  
**Type:** Article  

## Summary
[A brief paragraph summarizing the main points or argument of the article.]

## Key Points
- [First key point or takeaway from the article]
- [Second key point or takeaway]
- [Third key point or takeaway]
- [Fourth key point or takeaway]
- [Fifth key point or takeaway]

## Notes
*To be added after reading*
EOL

echo "Created article summary at $FILE_PATH"
echo "Please edit the file to add author, source, and other details." 