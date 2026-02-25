---
description: How to commit changes following Conventional Commits
---

# Git Commit Workflow

Follow these steps when committing changes to the dotfiles repository.

## Steps

1. Check current status and diff:
// turbo
```sh
git status && git diff --stat
```

2. Review the actual changes:
// turbo
```sh
git diff
```

3. Stage files — prefer staging by specific file/directory, not `git add .`:
```sh
git add <files>
```

4. Write a commit message following **Conventional Commits**:

```
<type>(<scope>): <subject>
```

### Commit Types

| Type | Usage |
|---|---|
| `feat` | New feature or config addition |
| `fix` | Bug fix |
| `docs` | Documentation only |
| `style` | Formatting changes (no logic change) |
| `refactor` | Restructuring without behavior change |
| `perf` | Performance improvement |
| `chore` | Maintenance, dependency updates |
| `config` | Config value changes |
| `update` | Updates to existing configs |

### Scope Examples

Use the directory/app name: `picom`, `i3`, `nvim`, `zsh`, `git`, `kitty`, `scripts`, `polybar`, `rofi`, `dunst`, `etc`

### Rules

- Use **English**, present tense, imperative mood (`add` not `added`)
- Keep subject under 50 characters
- Capitalize the first letter
- No period at the end
- Use body (`-m "..." -m "..."`) to explain *why*, not *how*

### Examples

```sh
git commit -m "feat(picom): add gaussian blur support"
git commit -m "fix(i3): resolve workspace switching on multi-monitor"
git commit -m "config(zsh): update FZF default options"
git commit -m "refactor(nvim): restructure plugin config" -m "Moved lazy.nvim plugin specs into separate files for clarity."
```

5. Verify the commit:
// turbo
```sh
git log -1 --oneline
```
