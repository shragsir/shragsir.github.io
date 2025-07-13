#!/bin/bash

echo "
Saving work..."
git add .

echo "Add commit message? [Y/N]:"
echo -n "  > "
read input

if [$input == "y" || $input == "Y"]; then
  echo "Enter commit message:"
  echo -n "  > "
  read message
else
  message="Automatic update (from VS Code)"
fi

echo "Commiting..."
git commit -m "$message"

git push origin main
