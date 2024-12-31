#!/bin/bash

# Access the PR EMAIL from the environment variable
PR_EMAIL="${PR_EMAIL}"

# Validate the PR author email format
if [[ ! "$PR_EMAIL" =~ ^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$ ]]; then
  echo "PR author email is invalid."
  exit 1
fi

echo "PR email check passed."
