#!/bin/sh

git add .

echo "Commit Message"
read input

git commit -m "$input"
git push
