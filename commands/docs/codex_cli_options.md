 # codex CLI Options

 This document lists all command-line options available for the `codex` CLI tool.

 ## Usage

 ```
 codex [options] <prompt>
 codex completion <bash|zsh|fish>
 ```

 ## Global Options

 - **-h, --help**  
   Show usage information and exit.

 - **--version**  
   Show the CLI version and exit.

 - **-m, --model <model>**  
   Model to use for completions. (default: `o4-mini`)

 - **-i, --image <path>**  
   Path(s) to image files to include as input. Can be specified multiple times.

 - **--view <rollout>**  
   Inspect a previously saved rollout instead of starting a new session. Specify the JSON file path.

 - **-q, --quiet**  
   Non-interactive mode that only prints the assistant's final output.

 - **-c, --config**  
   Open the instructions file (`codex.md`) in your editor and exit.

 - **-w, --writable-root <path>**  
   Writable folder for sandbox in full-auto mode. Can be specified multiple times.

 - **-a, --approval-mode <mode>**  
   Override the approval policy. `<mode>` must be one of:
   - `suggest` (default)
   - `auto-edit`
   - `full-auto`

 - **--auto-edit**  
   Automatically approve file edits; still prompt for commands.

 - **--full-auto**  
   Automatically approve edits and commands when executed in the sandbox.

 - **--dangerously-auto-approve-everything**  
   Skip all confirmation prompts and execute commands without sandboxing. **DANGEROUS**: intended only for testing.

 - **--no-project-doc**  
   Do not automatically include the repository's `codex.md` as context.

 - **--project-doc <file>**  
   Include an additional markdown file at `<file>` as project context.

 - **--full-stdout**, **--no-truncate**  
   Disable truncation of stdout/stderr from command outputs.

 - **--notify**  
   Enable desktop notifications for responses.

 - **--flex-mode**  
   Use the flex-mode processing mode for the request (only supported with models `o3` and `o4-mini`).

 - **-f, --full-context**  
   Launch in full-context mode, loading the entire repository into context and applying a batch of edits in one go. Incompatible with other flags except `--model`.

 ## Subcommands

 ### completion

 Generate and output shell completion scripts.

 ```
 codex completion <shell>
 ```

 **<shell>**:
 - `bash`
 - `zsh`
 - `fish`

 Outputs the appropriate shell completion snippet to stdout.

 ## Environment Variables

 - **OPENAI_API_KEY**  
   Required: Your OpenAI API key.