#!/bin/bash

# Get the list of commits in the PR
COMMITS=$(git rev-list HEAD..origin/${{ github.event.pull_request.base.ref }})

# Check each commit for "Signed-off-by" line
for COMMIT in $COMMITS; do
  if ! git log --format=%B -n 1 $COMMIT | grep -q "Signed-off-by:"; then
    echo "Commit $COMMIT is not signed off."
    exit 1
  fi
done

echo "All commits are signed off."
