#!/bin/bash

# Access the PR title from the environment variable
PR_TITLE="${PR_TITLE}"

# Check if the PR title starts with a capital letter
if [[ ! "$PR_TITLE" =~ ^[A-Z] ]]; then
  echo "PR title must start with a capital letter."
  exit 1
fi

# Additional checks can be added here

echo "PR title check passed."

