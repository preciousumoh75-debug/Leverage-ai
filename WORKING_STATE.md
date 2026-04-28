# Working State

Last updated: 2026-04-28 UTC

## Purpose

This file is the durable working log for this repository. Keep it concise and update it when a decision, preference, or next step becomes important.

The repo also uses `.codex-memory/` for structured memory:

- `.codex-memory/profile.md` for stable user and project preferences
- `.codex-memory/operating-mode.md` for the canonical assistant working rules
- `.codex-memory/project-schema.md` for future project memory structure
- `.codex-memory/decisions.md` for durable decisions and constraints
- `.codex-memory/active-context.md` for current work state and short-term context
- `.codex-memory/queue.md` for short-term pending items
- `.codex-memory/issues/` for longer-running issue notes
- `.codex-memory/history/` for archived context and resolved notes
- `.github/ISSUE_TEMPLATE/` for new memory items and follow-up capture
- `.github/workflows/` for validation of the memory model

## Current Goal

- Use this GitHub repository as cloud memory for our work.
- Keep context persistent across sessions.

## User Preferences

- Prefer direct action over long back-and-forth.
- Be proactive and practical.
- Call out important updates before making them when they affect the work.
- Keep the assistant as capable as possible with available integrations and skills.

## Current State

- Repository selected: `Leverage-ai`
- GitHub repository slug: `preciousumoh75-debug/Leverage-ai`
- Repository now contains structured memory files, issue templates, and helper scripts.
- GitHub is the chosen durable memory location.
- Structured memory files are now the primary persistence layer for assistant context.
- The memory model is being expanded to include queues and issue-style notes.
- The repo is becoming a GitHub-native workflow for persistent context.
- Current live work is the memory system itself, not a product feature.
- The repository now has a canonical working-mode note and project schema.
- The memory-setup workstream is now closed and archived.
- The next open issue is the first real project task.

## Next Steps

- Keep app integrations moving so more work can be done directly.
- Record future decisions and task state here instead of relying only on chat history.
- Update `.codex-memory/` when preferences, decisions, or active work change.
- Use issue-style notes for any multi-step follow-up work.
- Keep GitHub templates and validation in sync with the memory schema.
- Archive resolved notes under `.codex-memory/history/` when they are no longer active.
- Create a durable note for the memory setup and carry forward only the relevant state.
- Keep archive conventions simple: resolved notes move out of `open/`, then into `resolved/` or `history/` if they are worth keeping.
- Move from scaffolding to real project memory as soon as the next task is known.
