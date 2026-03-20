# AGENTS.md

## Repository Scope & Purpose

- This repository is **exclusively** for managing personal Arch Linux dotfiles and configuration files.
- This is NOT an application repository; there is **no build, test, release, or deployment flow**.
- **All work takes place in the main branch.** No branching or versioning is allowed.

---

## Committing Policy / `/commit` Command

- **The ONLY allowed way to commit is using the `/commit` command.**
- No agent or automation may commit code/config automatically. Wait for the explicit `/commit` instruction from the user.
- When `/commit` is invoked:
  - Analyze all staged changes.
  - Automatically generate a semantic and descriptive commit message (see rules and examples below).
  - Commit only to the main branch.
- **NEVER** perform any commit action unless `/commit` is called.
- Do NOT modify or add to the staging area automatically — only commit what the user has staged.

---

## Semantic Commit Message Rules

- **English ONLY**: Commit messages and all codebase artifacts must be in English.
- Use [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/): commit messages must begin with a semantic prefix, such as `feat`, `fix`, `docs`, `style`, `chore`, `refactor`, etc.
- Summarize changes clearly and concisely. Avoid unnecessary detail or repetition.
- **Message Examples:**
  - `feat(zsh): add fzf integration with custom keybind`
  - `fix(i3): correct floating window assignment`
  - `docs(readme): improve installation instructions`
  - `chore(git): update .gitconfig aliases`
- **Do NOT use Turkish or any other language** in commit messages or documentation.

---

## Security and Sensitive Content Protection

- **NEVER commit secrets, tokens, passwords, private keys, certificates, credential files, or similar sensitive content.**
- Agents and contributors MUST:
  - Scan both file names and contents for sensitive patterns (e.g., `.env`, `.ssh/`, `id_rsa`, `private`, `credential`, `token`, `password`, `cert`)
  - If any such sensitive material is detected, block the commit and notify the user with a warning.
- No exceptions: this rule supersedes all others in case of conflict.

---

## Editing, Formatting & Config Conventions

- Follow the natural syntax and conventions for each config file (e.g., shell, lua, markdown).
- Prefer minimal, clean, and human-readable edits.
- Use practical and descriptive alias names. Avoid ambiguity and magic values.
- If a new rule is added for a config file, document it at the top of that file with a comment.
- Group logical changes and avoid mixing multiple unrelated edits in a single commit.

---

## Git Workflow & Restrictions

- **Committing to the main branch only** is allowed. Branch creation, switching, or reference is strictly forbidden.
- No pushing, pulling, merging, rebasing, or release workflows allowed.
- You may use `.gitconfig` CLI aliases (e.g., `git st`, `git cm`) for efficiency.
- Prefer small, focused commits rather than multi-purpose or bulky ones.

---

## Editor & Environment

- Use [Neovim](https://neovim.io/) as the preferred `$EDITOR` (Vim is acceptable for fallback use).
- Linting is available for Markdown (`markdownlint`, via Neovim) and Lua (`stylua` via Mason); agents are **not required** to enforce lint rules, but may advise and assist if asked.
- Syntax highlighting is recommended for config files where possible.

---

## Agent Response and Language

- **All AGENTS.md, commit messages, and automated outputs must be in clear, correct English.**
- As a special exception, agents MAY reply to user queries in Turkish if and only if explicitly requested. (But never include Turkish in commit messages, titles, or documentation.)
- No other language may be used in artifacts or automated writing.

---

## Maintaining and Extending This Guide

- If you add or change any config workflow or convention, document the rationale at the top of the config file (in comments) and update AGENTS.md to reflect the change.
- AGENTS.md must always serve as the primary, up-to-date reference for any agent or contributor working on this repository.

---

## Quick Reference: What is NOT ALLOWED

- No automatic commits (must use `/commit`, only after explicit user instruction)
- No branch, tag, rebase, merge, release, or version management
- No non-English commit messages or documentation
- No secrets, tokens, private keys, passwords, or certificates in version control


---

## Example `/commit` Workflow

```bash
# 1. Edit your files as needed
$ nvim ~/.config/i3/config

# 2. Stage your changes
$ git add ~/.config/i3/config

# 3. When ready, call:
/commit

# The agent will analyze staged changes, enforce all rules above, and produce a semantic, English commit message.
```

---

## Questions? Issues?
- Always refer to this file first.
- For workflow or tooling concerns not explicitly addressed here, default to clarity, security, and minimalism.