# Decisions

Last updated: 2026-04-28 UTC

## Current Decisions

- `Leverage-ai` is the human-facing workspace name.
- GitHub repo `preciousumoh75-debug/Leverage-ai` is the durable memory store for this workspace.
- `WORKING_STATE.md` is the top-level human-readable log.
- `.codex-memory/` is the structured memory area for stable context.
- `README.md` explains the memory operating model to future contributors.
- Issue-style notes live under `.codex-memory/issues/`.
- `queue.md` tracks short-term open items.
- Resolved notes should be archived under `.codex-memory/history/` when they stop being active.
- The memory setup itself is a durable project context and should be recorded as an issue note.
- `.codex-memory/operating-mode.md` is the canonical working rule set.
- `.codex-memory/project-schema.md` is the template for future project memory.
