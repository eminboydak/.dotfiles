# Dotfiles Repository — Core Rules

This is a GNU Stow-managed Arch Linux dotfiles repository. Follow these rules when working with any configuration.

## System Overview

```
Distribution         : Arch Linux
Window Manager       : i3-gaps + i3status
Shell                : zsh (oh-my-zsh, bira theme)
Terminal             : kitty
Terminal Multiplexer : zellij
Editor               : neovim
Notification Daemon  : dunst
Compositor           : picom
Launcher             : rofi
Theme                : catppuccin (macchiato)
```

## File Organization

1. **Each application gets its own directory** at the repo root (e.g., `picom/`, `i3/`, `nvim/`)
2. Inside each directory, mirror the target path structure:
   - `~/.config/app/` configs → `app/.config/app/`
   - Home-level dotfiles → `zsh/.zshrc`
   - System-wide configs → `etc/X11/`, `etc/systemd/` (stowed with `-t /etc/`)
3. Follow the **XDG Base Directory** standard:
   - `~/.config/` — user configs
   - `~/.local/share/` — user data
   - `~/.cache/` — cache files

## Path Rules

- Always use `~` or `$HOME`, never hardcoded absolute paths
- Use relative paths within configs when possible
- Check for XDG compliance before placing files

## Security

- **Never commit** passwords, API keys, or tokens
- Use `.gitignore` for sensitive files
- Use `.stow-local-ignore` for files that shouldn't be symlinked
- Prefer environment variables or separate untracked config files for secrets

## Symlink Safety

- Always check for existing files before stowing
- Use `stow -n` (dry-run) first to preview changes
- Use `stow --adopt` very carefully — it can overwrite repo files
- Verify with `ls -la ~/.config/` after stowing

## Application-Specific Notes

| App | Reload / Test Command |
|---|---|
| i3 | `i3-msg reload` or test with `i3 -c ~/.config/i3/config` |
| picom | Check for deprecated options after updates (type specifiers, refresh-rate) |
| neovim | Keep plugins synced with `:Lazy sync` |
| zsh | Test in a new terminal before closing the current one |
| polybar | `polybar-msg cmd restart` |
| systemd | `systemd-analyze verify` for service files |
| dunst | `dunstctl reload` |

## Config Editing Best Practices

1. Test configs in a separate terminal/session before applying globally
2. Keep configs modular — separate concerns into different files
3. Document non-obvious settings with inline comments
4. After Arch package updates (`pacman -Syu`), check for deprecated options in updated apps
