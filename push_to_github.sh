#!/bin/bash

# Exit on error
set -e

echo "Initializing Git repository (if not already initialized)..."
if [ ! -d .git ]; then
  git init
  echo "Git repository initialized."
else
  echo "Git repository already exists."
fi

echo "Adding all files to Git..."
git add .

echo "Committing files..."
git commit -m "Initial commit: AWS ETL Pipeline for YouTube Analytics" || echo "No changes to commit"

echo "Setting up remote origin..."
git remote remove origin 2>/dev/null || echo "No remote origin to remove"
git remote add origin git@github.com:AnuAlli/Build-An-Aws-ETL-Data-Pipeline-in-Python-on-Youtube-Data.git

echo "Pushing to GitHub..."
git push -u origin main || git push -u origin master

echo "Done! Your code has been pushed to GitHub." 