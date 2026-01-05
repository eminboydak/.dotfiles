# Dotfiles Repository Rules

## General Guidelines

### File Organization
- Use GNU Stow for symlink management to keep home directory clean
- Organize configs by application (e.g., `picom/`, `i3/`, `nvim/`)
- Use `.config/` directory structure when applicable (XDG Base Directory standard)
- Keep system-wide configs in `etc/` directory (use `stow -t /etc/`)

### Path Considerations
- Always use `~` or `$HOME` instead of hardcoded paths
- Use relative paths in configs when possible
- Be mindful of XDG directories:
  - `~/.config/` for user-specific configs
  - `~/.local/share/` for user-specific data
  - `~/.cache/` for cache files

### Sensitive Information
- **Never commit** passwords, API keys, or tokens
- Use `.gitignore` to exclude sensitive files
- Consider using environment variables or separate config files
- Use `stow-local-ignore` for files you don't want to symlink

### Symlink Safety
- Always check for existing files before stowing
- Use `stow --adopt` carefully (can overwrite existing files)
- Test symlinks after creation: `ls -la ~/.config/`
- Use `stow -n` (dry-run) to preview changes

### Configuration Updates
- Test configs in a separate terminal/session before applying globally
- Keep configs modular - separate concerns into different files
- Document non-obvious settings with comments
- Check for deprecated options after application updates

### Application-Specific Notes
- **i3/i3status**: Test with `i3 -c ~/.config/i3/config` before reloading
- **picom**: Check for deprecated options after updates (type specifiers, refresh-rate, etc.)
- **neovim**: Keep plugin lists synced with `:Lazy sync`
- **zsh**: Test changes in new terminal before closing current
- **systemd**: Use `systemd-analyze verify` to check service files

### Distribution-Specific
- This repo is primarily for **Arch Linux**
- Some configs may need adjustments for other distributions
- Package names and paths may differ (e.g., `/etc/` locations)
- Systemd service files are Arch-specific

## Git Commit Conventions

This repository follows [Conventional Commits](https://www.conventionalcommits.org/) specification.

### Format

```
<type>(<scope>): <subject>

<body>

<footer>
```

### Types

- `feat`: New feature
- `fix`: Bug fix
- `docs`: Documentation changes
- `style`: Code style changes (formatting, etc.)
- `refactor`: Code refactoring
- `perf`: Performance improvements
- `test`: Adding or updating tests
- `chore`: Maintenance tasks, dependency updates
- `config`: Configuration file changes
- `update`: Updates to existing configurations

### Scope Examples

- `picom`: Picom compositor configuration
- `i3`: i3 window manager configuration
- `nvim`: Neovim configuration
- `zsh`: Zsh shell configuration
- `git`: Git configuration
- `kitty`: Kitty terminal configuration
- `scripts`: Shell scripts
- `etc`: System-wide configurations

### Commit Message Examples

```bash
# Simple commit
git commit -m "feat(picom): Add gaussian blur support"

# With body
git commit -m "fix(i3): Resolve workspace switching issue" -m "Fixed bug where workspace switching would fail when multiple monitors were connected."

# Breaking change
git commit -m "feat(nvim)!: Restructure plugin configuration

BREAKING CHANGE: Plugin configuration has been moved to a new directory structure. Please run :Lazy sync after updating."
```

### Best Practices

- Use present tense ("add" not "added")
- Use imperative mood ("move" not "moves")
- Keep subject line under 50 characters
- Capitalize the first letter of the subject
- Don't end subject with a period
- Use body to explain what and why, not how
- Reference issues and PRs in footer
