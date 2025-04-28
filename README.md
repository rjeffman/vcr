VCR
===

`vcr` will create a _tape_ for [vhs](https://github.com/charmbracelet/vhs),
based on a regular shell script, allowing creation of a demo without manual
intervention with the `vhs` shell, and ensuring that the commands are correct.

Some `vhs` behavior can be controlled in a command-by-command basis using
comments in the script with the tag `vcr:` (as in `# vcr:`).

The available commands are:

- `clear[=<time>]`: Clear the screen before the next command, after the
  specified amount of time. Default time is _3s_.
- `hide`: Hide commands
- `show`: Show commands (after `hide`)
- `wait="[+context] <regex>"`: Wait context and regex.
  By default `vcr` waits for a prompt ending with with `[$#] *`.
- `prompt=/<regex>/`: Set the prompt to wait before executing the next
  command
- `timeout=<time>`: Modify the default timeout to wait for a command.
  Default is _10s_.
- `sleep=<time>`: Wait some specific amount of time. Use `s` for seconds,
  `ms` for miliseconds, and `m` for minutes. **Note**: Using `sleep` will
  override `wait`.

Multiple commands can be used an one, as in `# vcr: show clear wait="+OK"`

In a `vcr` comment, anything after `--` is ignored.

Comments on the original script are _"typed"_ in the final demo, so there's
a way to give instructions to the audience.
