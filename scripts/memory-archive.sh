#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
open_dir="$repo_root/.codex-memory/issues/open"
resolved_dir="$repo_root/.codex-memory/issues/resolved"
history_dir="$repo_root/.codex-memory/history"

usage() {
  cat <<'EOF'
Usage:
  scripts/memory-archive.sh open <file>
  scripts/memory-archive.sh resolved <file>
  scripts/memory-archive.sh history <file>

Moves a memory note into the corresponding archive area.
EOF
}

target_kind="${1:-}"
source_file="${2:-}"

if [[ -z "$target_kind" || -z "$source_file" ]]; then
  usage
  exit 1
fi

case "$target_kind" in
  open)
    destination_dir="$open_dir"
    ;;
  resolved)
    destination_dir="$resolved_dir"
    ;;
  history)
    destination_dir="$history_dir"
    ;;
  *)
    usage
    exit 1
    ;;
esac

if [[ ! -f "$source_file" ]]; then
  echo "Source file not found: $source_file" >&2
  exit 1
fi

mkdir -p "$destination_dir"
mv "$source_file" "$destination_dir/"
echo "$destination_dir/$(basename "$source_file")"
