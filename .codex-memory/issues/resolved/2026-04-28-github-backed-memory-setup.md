# GitHub-backed memory setup

Last updated: 2026-04-28 UTC

## Status

- Resolved

## Why it mattered

- This repository is the durable memory backend for the workspace.
- The structure needed to stay concise, consistent, and easy to extend.

## Next action

- Keep the memory files synchronized with the current operating state.

## Notes

- Core files: `WORKING_STATE.md`, `.codex-memory/profile.md`, `.codex-memory/decisions.md`, `.codex-memory/active-context.md`, `.codex-memory/queue.md`
- Support files: `.codex-memory/issues/`, `.codex-memory/history/`, `.codex-memory/operating-mode.md`, `.codex-memory/project-schema.md`, `.github/ISSUE_TEMPLATE/`, `.github/workflows/`, `scripts/`
- The GitHub integration was not needed for the rename, but live app-backed memory still depends on that integration being connected if you want Codex to read and write through the app UI.
