VCR
===

`vcr` will create a _tape_ for [vhs](https://github.com/charmbracelet/vhs),
based on a regular shell script, allowing creation of a demo without manual
intervention with the `vhs` shell, and ensuring that the commands are correct.

Some `vhs` behavior can be controlled in a command-by-command basis using
comments in the script with the tag `vcr:` (as in `# vcr:`).

The available commands are:

**`clear[=<time>]`**

Clear the screen before the next command, after the specified amount of time.
Default time is _3s_.


**`hide`**

Enter "Hide Mode", where commands are not shown. In `vhs` it means to run the
commands but don't show it being typed or the partial results and messages.
Only the final result will be shown.


**`show`**

Ente "Show Mode'. This is the default operation mode.

**`wait="[+context][@timeout] <regex>"`**

Wait for the context (Line or Screen) to match the regex. A timeout can be
given. By default `vcr` waits for a prompt ending with with `[$#] *` after
each command.

**`prompt=/<regex>/`**

Set the default prompt to wait before executing the a command. This will
affect all subsequent commands.

**`timeout=<time>`**

Modify the timeout to wait for a prompt after the next command. This is
the same as setting `wait=@<time> <current prompt>`. The default timeout
is _10s_.

**`sleep=<time>`**

Wait for the given `<time>` before issues the next command. Using `sleep`
will disable `wait` and typing may start before the command finishes.


Notes
-----

- For any `time` use an integer value, followed by `s` for seconds,
  `ms` for miliseconds, and `m` for minutes. Ex: `250ms`.

- Multiple commands can be used in one tag,
  as in `# vcr: show clear wait="+OK"`

- In a `vcr` tag, anything after `--` is ignored.

- Comments on the original script are _"typed"_ in the final demo,
  so there's a way to give instructions to the audience.

- You can generate a template script with a brief optinos manual with:
  `vcr -t > my_vcr_script.sh`
