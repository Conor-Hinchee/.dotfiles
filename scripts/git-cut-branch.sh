#!/bin/bash

# Get the current branch name
branch_name=$(git symbolic-ref --short HEAD)

# Add all changes to staging
git add .

# Commit the changes with the branch name as the message
git commit -m "$branch_name"

# Push the changes to the origin repository
git push origin "$branch_name"
