---
description: "Atomically stage and commit logical groups of changes with semantic messages"
---

Automatically analyze all unstaged changes, group them by logical config (e.g., zsh, i3, nvim, git), stage each group separately, and create semantic commit messages following AGENTS.md conventions:
- Group changes by directory or config type
- Stage each logical group with `git add <path>`
- Create a separate semantic commit for each group (feat, fix, docs, chore, refactor, style)
- Write all messages in English only
- Keep messages concise and descriptive
- Scan for sensitive content before each commit
- Commit only to main branch
- Never commit secrets, tokens, or credentials
