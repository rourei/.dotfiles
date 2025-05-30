#!/usr/bin/env bash

# Source: https://www.redhat.com/en/blog/arguments-options-bash-scripts

# Variables
name="user"
email="user@mail.com"

_help()
{
  echo "This script shows how to use options in bash scripts."
  echo
  echo "Syntax: options.sh [-h|e|n]"
  echo "Options:"
  echo "-h    Print this help"
  echo "-e    Specify the email address"
  echo "-n    Specify the name"
  echo
}

# Loop through options
# Every option that expects an argument afterwards needs to have a colon (:) in the declaration
while getopts ":he:n:" option; do
  case $option in
    h) _help
       exit;;
    e) email=$OPTARG;;
    n) name=$OPTARG;;
   \?) echo "Error: Invalid option"
       exit;;
  esac
done

# ==== MAIN SCRIPT ====
echo "Name: $name"
echo "Email: $email"

