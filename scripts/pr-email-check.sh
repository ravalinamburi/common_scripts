#!/bin/bash

# Extract the PR author email from the GitHub event payload
PR_USER_EMAIL="${{ github.event.pull_request.user.email }}"

# Check if the PR author email is available
if [[ -z "$PR_USER_EMAIL" ]]; then
  echo "PR author email is not available."
  exit 1
fi

# Validate the PR author email format
if [[ ! "$PR_USER_EMAIL" =~ ^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$ ]]; then
  echo "PR author email is invalid."
  exit 1
fi

echo "PR email check passed."
