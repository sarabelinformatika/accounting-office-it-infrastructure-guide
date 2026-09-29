#!/usr/bin/env bash
set -u

target=${1:-}
max_age_hours=${2:-26}

if [[ -z "$target" ]]; then
  printf 'Usage: %s BACKUP_DIRECTORY [MAX_AGE_HOURS]\n' "$0" >&2
  exit 2
fi

if [[ ! -d "$target" ]]; then
  printf '[FAIL] Backup directory is unavailable: %s\n' "$target" >&2
  exit 1
fi

case "$max_age_hours" in
  ''|*[!0-9]*)
    printf '[FAIL] MAX_AGE_HOURS must be a positive integer\n' >&2
    exit 2
    ;;
esac

printf '# Backup target report\n'
printf 'Target: %s\n' "$target"
df -hP "$target"

newest=$(find "$target" -type f -printf '%T@ %p\n' 2>/dev/null | sort -nr | head -n 1 || true)
if [[ -z "$newest" ]]; then
  printf '[FAIL] No backup files were found\n' >&2
  exit 1
fi

newest_epoch=${newest%% *}
newest_path=${newest#* }
now_epoch=$(date +%s)
newest_seconds=${newest_epoch%.*}
age_hours=$(((now_epoch - newest_seconds) / 3600))

printf 'Newest file: %s\n' "$newest_path"
printf 'Newest file age: %d hour(s)\n' "$age_hours"

if ((age_hours > max_age_hours)); then
  printf '[FAIL] Newest backup exceeds %d hour(s)\n' "$max_age_hours" >&2
  exit 1
fi

printf '[OK] Backup target contains a recent file\n'
printf 'Read-only freshness check; this does not prove backup consistency or recoverability.\n'
