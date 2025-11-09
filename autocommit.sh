#!/usr/bin/env bash

set -euo pipefail

usage() {
  cat <<'EOF'
Usage: ./autocommit.sh

Prompts for a short note, appends it to README.md with a timestamp, commits,
and pushes the change to keep the activity log up to date.
EOF
}

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

README="README.md"

if [[ ! -f "$README" ]]; then
  echo "README.md not found in $(pwd)" >&2
  exit 1
fi

if [[ "${1:-}" =~ ^(-h|--help)$ ]]; then
  usage
  exit 0
fi

# Prompt the user for a short journal entry to keep the log intentional.
read -rp "What did you work on today? " JOURNAL_ENTRY

if [[ -z "$JOURNAL_ENTRY" ]]; then
  echo "Please enter at least one character describing your work." >&2
  exit 1
fi

# Ensure the activity log section exists exactly once.
if ! grep -q "^## Activity Log" "$README"; then
  {
    echo
    echo "## Activity Log"
    echo
  } >> "$README"
fi

timestamp="$(date +"%Y-%m-%d %H:%M:%S %Z")"
entry="- [$timestamp] $JOURNAL_ENTRY"
echo "$entry" >> "$README"

git add "$README"
git commit -m "chore: log progress $timestamp" >/dev/null
git push

echo "Logged your work and pushed the update. Keep up the streak!"
