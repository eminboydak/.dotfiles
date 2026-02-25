---
description: Safe workflow for editing any application config
---

# Config Editing Workflow

Follow these steps when editing any configuration file in the repository.

## Steps

1. **Identify the config file** and check where it's symlinked:
// turbo
```sh
ls -la <symlink-path>
```

2. **Make your changes** in the dotfiles repo (not the symlink target).

3. **Test the config** before applying globally:

| App | How to Test |
|---|---|
| i3 | `i3 -c ~/.config/i3/config` (test parse) then `i3-msg reload` |
| picom | Kill and restart: `killall picom && picom &` |
| zsh | Open a **new** terminal — don't close the current one yet |
| nvim | Open nvim and check for errors: `nvim --headless +qa` |
| polybar | `polybar-msg cmd restart` |
| dunst | `dunstctl reload` |
| kitty | Close and reopen kitty, or `kitty @ set-colors` for colors |
| systemd | `systemd-analyze verify <unit>` |

4. **Verify** the app loads correctly with the new config.

5. **Commit** the change using the `/git-commit` workflow.

## Troubleshooting

- If a config breaks the app, the original is safely in git:
```sh
git checkout -- <file>
```

- For i3, if you get locked out, switch to a TTY (`Ctrl+Alt+F2`) and fix from there.

- Check application logs for errors:
```sh
journalctl --user -u <service> -n 20
```
