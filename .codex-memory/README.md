# Codex Memory

This directory stores durable, GitHub-backed memory for the workspace.

## Files

- `profile.md`: stable preferences and identity notes
- `operating-mode.md`: canonical working rules for the assistant
- `project-schema.md`: template for new project memory entries
- `decisions.md`: durable decisions, constraints, and conventions
- `active-context.md`: current task state and immediate next actions
- `queue.md`: prioritized open items
- `issues/`: issue-style notes for larger tasks or follow-ups
- `history/`: archive for resolved notes and older snapshots
- `history/convention.md`: archive and changelog rules

## GitHub Workflow

- Use issue templates for new durable tasks or follow-up work.
- Use the queue for short, high-priority items.
- Use the validation workflow to catch missing memory files and broken helpers.
- Archive resolved context instead of deleting it when it may still matter later.
- Use the project schema for any new persistent project note.

## Rules

- Keep entries short and factual.
- Prefer dates for anything time-sensitive.
- Update only the file that changed.
- Do not store secrets, tokens, or passwords here.
- If a topic grows beyond a few bullets, move it into an issue note.
