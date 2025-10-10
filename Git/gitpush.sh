#!/bin/bash

# check if a commit message is provided
if [ -z "$1" ]; then
  echo "❌ Please provide a commit message."
  echo "Usage: ./gitpush.sh \"your commit message\""
  exit 1
fi

# run git commands
git add -A
git commit -m "$1"
git push origin master

echo "✅ All changes pushed with message: '$1'"

# ./gitpush.sh "your commit message"

# If you want to use this from any folder, move it to a directory in your PATH (like /usr/local/bin for macOS/Linux, or add folder to PATH in Windows).

# gitpush "commit message"