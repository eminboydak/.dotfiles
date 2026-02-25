---
description: How to manage GNU Stow packages (add, update, remove)
---

# Stow Package Management

## Adding a New Package

1. Create the directory structure mirroring the target path:
```sh
# For ~/.config/app/ configs:
mkdir -p <app>/.config/<app>

# For home-level dotfiles:
# Just place the file directly, e.g., zsh/.zshrc
```

2. Place config files in the correct structure.

3. Dry-run to verify what will be symlinked:
// turbo
```sh
cd ~/.dotfiles && stow -n -v <app>
```

4. If no conflicts, stow the package:
```sh
cd ~/.dotfiles && stow <app>
```

5. Verify the symlinks:
// turbo
```sh
ls -la ~/.config/<app>/
```

## Removing a Package

1. Unstow (remove symlinks):
```sh
cd ~/.dotfiles && stow -D <app>
```

2. Verify symlinks are removed:
// turbo
```sh
ls -la ~/.config/<app>/
```

## System-Wide Configs (`/etc/`)

For configs under `etc/`:
```sh
# Stow with explicit target
cd ~/.dotfiles && sudo stow etc -t /etc/
```

## Adopting Existing Configs

> [!CAUTION]
> `stow --adopt` moves existing files INTO the repo, overwriting repo versions. Commit or stash first!

```sh
cd ~/.dotfiles && stow --adopt <app>
```

Then review the diff to make sure nothing was lost:
// turbo
```sh
git diff
```
