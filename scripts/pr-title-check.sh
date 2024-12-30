#!/bin/bash

# Extract the PR title from the GitHub event payload
PR_TITLE="${{ github.event.pull_request.title }}"

# Check if the PR title starts with a capital letter
if [[ ! "$PR_TITLE" =~ ^[A-Z] ]]; then
  echo "PR title must start with a capital letter."
  exit 1
fi

# Additional checks can be added here

echo "PR title check passed."
