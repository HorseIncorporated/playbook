#!/bin/bash

# i would like to create spaces for all of the "players"

# setup once
# cd /Users/john2/playbook && git pull origin --no-rebase

# create the player directories
for i in {1..4}; do
  cp -R /Users/john2/playbook /Users/john2/player$i
  cd /Users/john2/player$i
  devcontainer build --workspace-folder .
  
done

# build the dev-containers
for i in {1..4}; do
  cp -R /Users/john2/playbook /Users/john2/player$i
done

# rm -rf each of the existing copies
# cd /Users/john2/playbook && git pull origin --no-rebase


# cp -R /Users/john2/playbook /Users/john2/player1
# {executed command} = echo $GH_PAT | gh auth login -p https --with-token > /dev/null
devcontainer exec --workspace-folder . {executed command}

claude "$MYPROMPT" --output-format stream-json --dangerously-skip-permissions

# aider
# ./state.png
# --architect
# --auto-accept-architect
# --weak-model=o4-mini
# --editor-model=o1
# --pretty
# --stream
# --watch-files

# player1: "command"

# player2: "command"

# player3: "command"

# player4: "command"


