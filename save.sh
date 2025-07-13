#!/bin/bash

clear
echo "Saving work..."
git add .
sleep 0.5

echo "Add commit message? [Y/N]:"
echo -n "  > "
read input

if [[ $input == "y" || $input == "Y" ]]; then
  echo "Enter commit message:"
  echo -n "  > "
  read message
else
  message="Automatic update (from VS Code)"
fi

echo "Committing..."
git commit -m "$message"
git push origin main

sleep 0.4
clear
echo "Done!"
sleep 1
exit