#!/usr/bin/env bash

#the absolute path to the program is provided as the first and only argument
CALCULATOR=$1

echo "We've set up a GitHub Actions Workflow that will run all"
echo "of the shell scripts in this directory as a series of tests."
echo
echo "To fail any test, you should use the exit 1 command;"
echo "To end a test early as a success, you should use the exit 0 command."

echo "Invoke your program with the \$CALCULATOR variable; an example is below"


#Test 01: ensure negtive numbers work as expected for multiplication
if [[$(CALCULATOR 1 '*' -3) -ne  -3]]; then
  echo 'ERROR! A valid run of the calculator (1 '*' -3) failed!'
  exit 1
 fi

#Test 02: ensure simple division case works as expected
if [[$(CALCULATOR 100 / 10) -ne 10]]; then
  echo 'ERROR! A valid run of the calculator (100 / 10) failed to produce 10 as an ouput!'
  exit 1
 fi

#Test 03: ensure simple subtraction case works as expected
if [[$(CALCULATOR 4 - -3) -ne 7]]; then
  echo 'ERROR! A valid run of the calculator (4 - -3) failed to produce 7 as an output!'
  exit 1
 fi



