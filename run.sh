#!/bin/bash

VAR=$(./$1.exp)

if [ $? == 0 ]; then
  echo "Pass: Test $1 passed"
  exit 0
else
  echo "Fail: Test $1 failed"
  exit 1
fi