#!/bin/bash
# Usage: bash deploy.sh <GITHUB_USERNAME> <REPO>
USER="$1"
REPO="$2"
if [ -z "$USER" ] || [ -z "$REPO" ]; then
  echo "Usage: bash deploy.sh <GITHUB_USERNAME> <REPO>"
  exit 1
fi
git init
git add .
git commit -m "Initial prototype"
git branch -M main
git remote add origin https://github.com/${USER}/${REPO}.git
git push -u origin main
echo "Pushed. Now enable GitHub Pages in repo settings (branch: main / root)."
