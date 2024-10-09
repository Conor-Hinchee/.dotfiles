#!/bin/sh

# Iterate over all files in the current directory
for file in *; do
# Check if it is a file (not a directory) and not README.md
if [ -f "$file" ] && [ "$file" != "README.md" ]; then
    # Set the file as executable
    chmod +x "$file"
    echo "Set $file as executable"
  fi
done
