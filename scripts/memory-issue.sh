#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
issues_dir="$repo_root/.codex-memory/issues/open"

slugify() {
  tr '[:upper:]' '[:lower:]' | sed -E 's/[^a-z0-9]+/-/g; s/^-+|-+$//g; s/-+/-/g'
}

usage() {
  cat <<'EOF'
Usage:
  scripts/memory-issue.sh "Issue title"

Creates a new issue-style memory note under .codex-memory/issues/open/.
EOF
}

title="${1:-}"
if [[ -z "$title" ]]; then
  usage
  exit 1
fi

date_stamp="$(date -u +%Y-%m-%d)"
slug="$(printf '%s' "$title" | slugify)"
file="$issues_dir/${date_stamp}-${slug}.md"

if [[ -e "$file" ]]; then
  echo "Issue note already exists: $file" >&2
  exit 1
fi

cat >"$file" <<EOF
# $title

Last updated: ${date_stamp} UTC

## Status

- Open

## Why it matters

- 

## Next action

- 

## Notes

- Created from the memory workflow.
EOF

echo "$file"
