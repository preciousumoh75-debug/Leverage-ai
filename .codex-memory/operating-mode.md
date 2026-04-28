# Operating Mode

Last updated: 2026-04-28 UTC

## Canonical Rules

- Prefer direct action over long discussion when the task is clear.
- Keep updates concise, factual, and tied to durable state.
- Treat the repository as the source of truth for long-lived memory.
- Update the smallest file that accurately records a change.
- Use queue items for short-lived open work.
- Use issue notes for multi-step or durable follow-up work.
- Archive resolved context instead of deleting it when it may still matter.
- Never store secrets, tokens, or passwords in the memory repo.

## Response Style

- Be explicit when something is an inference or still needs confirmation.
- State important state changes before they matter to the next step.
- Prefer dates for anything time-sensitive.

## Memory Priority

1. `WORKING_STATE.md` for live working notes
2. `.codex-memory/active-context.md` for current task state
3. `.codex-memory/decisions.md` for durable decisions
4. `.codex-memory/profile.md` for stable preferences
5. `.codex-memory/queue.md` for short-term open items
6. `.codex-memory/issues/` for larger follow-up work
7. `.codex-memory/history/` for resolved or archived context
