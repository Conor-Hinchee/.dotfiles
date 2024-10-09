#!/bin/bash

# Get the current git branch name
branch=$(git rev-parse --abbrev-ref HEAD)

# Check if the current directory is a git repository
if [ $? -eq 0 ]; then
  echo "Current Git branch is: $branch"
  
  # Copy branch name to clipboard (Linux and macOS)
  if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    echo "$branch" | xclip -selection clipboard
    echo "Branch name copied to clipboard (Linux)."
  elif [[ "$OSTYPE" == "darwin"* ]]; then
    echo "$branch" | pbcopy
    echo "Branch name copied to clipboard (macOS)."
  else
    echo "OS not supported for clipboard copying. Current branch: $branch"
  fi
else
  echo "Not a git repository."
fi
