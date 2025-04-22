#!/bin/bash

cd /Users/john2
for i in {1..4}; do
  cd /Users/john2/player$i
  killdev
  cd ..
  rm -rf /Users/john2/player$i
done