#!/bin/bash

# This script will create a tag on the current commit when merging to master

# Check if we are on the master branch
if [ "$(git rev-parse --abbrev-ref HEAD)" != "master" ]; then
    echo "Not on master branch, aborting."
    exit 1
fi

# Get the current commit hash
COMMIT_HASH=$(git rev-parse HEAD)

# Get the current date
DATE=$(date +%Y-%m-%d)

# Create the tag
git tag -a "release-$DATE-$COMMIT_HASH" -m "Release $DATE"

echo "Tag created: release-$DATE-$COMMIT_HASH"
