#!/bin/bash

# check if a commit message is provided
if [ -z "$1" ]; then
  echo "❌ Please provide a commit message."
  echo "Usage: ./gitcommit.sh \"your commit message\""
  exit 1
fi

# run git commands
git add -A
git commit -m "$1"

# echo "✅ All changes committed with message: '$1'"

# check if the commit was successful
if [ $? -eq 0 ]; then
  echo "✅ All changes committed with message: '$1'"
  echo "📊 Current status:"
  git status
else
  echo "❌ Commit failed!"
fi


# ./gitcommit.sh "your commit message"
# If you want to use this from any folder, move it to a directory in your PATH (like /usr/local/bin for macOS/Linux, or add folder to PATH in Windows).
# gitcommit "commit message"