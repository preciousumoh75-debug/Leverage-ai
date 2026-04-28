#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
memory_dir="$repo_root/.codex-memory"

usage() {
  cat <<'EOF'
Usage:
  scripts/memory-log.sh profile "note text"
  scripts/memory-log.sh decision "note text"
  scripts/memory-log.sh context "note text"
  scripts/memory-log.sh queue "note text"

This appends a dated bullet to the matching memory file.
EOF
}

section="${1:-}"
note="${2:-}"

if [[ -z "$section" || -z "$note" ]]; then
  usage
  exit 1
fi

timestamp="$(date -u +%Y-%m-%d)"

case "$section" in
  profile)
    target="$memory_dir/profile.md"
    heading="## Notes"
    ;;
  decision)
    target="$memory_dir/decisions.md"
    heading="## Additions"
    ;;
  context)
    target="$memory_dir/active-context.md"
    heading="## Additions"
    ;;
  queue)
    target="$memory_dir/queue.md"
    heading="## Open Items"
    ;;
  *)
    usage
    exit 1
    ;;
esac

if ! grep -q "^${heading}$" "$target"; then
  printf '\n%s\n' "$heading" >>"$target"
fi

printf -- '- %s %s\n' "[$timestamp]" "$note" >>"$target"
