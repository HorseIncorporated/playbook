#!/bin/bash

cd /Users/john2/playbook && git pull origin --no-rebase
for i in {1..4}; do
  cp -R /Users/john2/playbook /Users/john2/player$i
  cd /Users/john2/player$i
  devcontainer build --workspace-folder .
done