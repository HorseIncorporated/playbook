# game

## setup

### build workspaces

```shell
./game/setup.sh
```

### add launch config to ~/.warp/launch_configurations/ folder

```yaml
{
  "name": "execute playcall",
  "windows": [
    {
      "tabs": [
        {
          "layout": {
            "split_direction": "horizontal",
            "panes": [
              {
                "split_direction": "vertical",
                "panes": [
                  {
                    "cwd": "/Users/john2/player1",
                    "commands": [
                      {
                        "exec": "devcontainer exec --workspace-folder . claude \"$(cat /Users/john2/playbook/.playcall/player1.md)\" --output-format stream-json --dangerously-skip-permissions"
                      }
                    ]
                  },
                  {
                    "cwd": "/Users/john2/player3",
                    "commands": [
                      {
                        "exec": "devcontainer exec --workspace-folder . claude \"$(cat /Users/john2/playbook/.playcall/player3.md)\" --output-format stream-json --dangerously-skip-permissions"
                      }
                    ]
                  }
                ]
              },
              {
                "split_direction": "vertical",
                "panes": [
                  {
                    "cwd": "/Users/john2/player2",
                    "commands": [
                      {
                        "exec": "devcontainer exec --workspace-folder . claude \"$(cat /Users/john2/playbook/.playcall/player2.md)\" --output-format stream-json --dangerously-skip-permissions"
                      }
                    ]
                  },
                  {
                    "cwd": "/Users/john2/player4",
                    "commands": [
                      {
                        "exec": "devcontainer exec --workspace-folder . claude \"$(cat /Users/john2/playbook/.playcall/player4.md)\" --output-format stream-json --dangerously-skip-permissions"
                      }
                    ]
                  }
                ]
              }
            ]
          }
        }
      ]
    }
  ]
}
```

## execute the round (repeat until exhaustion)

> **MAIN FEATURE (WIP)**: Add a playbook editor 
> Commands are saved in commands as assets/{command_name}.command.json
> Any natural language query (example route) requested through the local client will attempt to generate a command configuration using the NLQ. User should verify configuration and save.
> The User can then edit the command configuration and submit their request.
> 

- [ ] open player1 - player4.md in vscode and enter the command prompts you'd like to run for each
- [ ] run the playcall command in warp

```shell
./game/teardown.sh
```