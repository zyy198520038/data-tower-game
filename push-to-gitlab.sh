#!/bin/bash
# Creates the GitLab project yzhu/data-tower-game (private) on first push and uploads this folder.
set -e
cd "$(dirname "$0")"
REMOTE="https://cd.splunkdev.com/yzhu/data-tower-game.git"
if [ ! -d .git ]; then
  git init -b main
fi
git add -A
git commit -m "${1:-Update Future Data Search Tower}" || echo "Nothing new to commit"
git remote remove origin 2>/dev/null || true
git remote add origin "$REMOTE"
git push -u origin main
echo
echo "Done: https://cd.splunkdev.com/yzhu/data-tower-game"
