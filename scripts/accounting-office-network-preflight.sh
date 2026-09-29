#!/usr/bin/env bash
set -u

failures=0
warnings=0

ok() { printf '[OK] %s\n' "$1"; }
warn() { printf '[WARN] %s\n' "$1"; warnings=$((warnings + 1)); }
fail() { printf '[FAIL] %s\n' "$1"; failures=$((failures + 1)); }

printf '# Accounting office network preflight\n'
printf 'Collected: %s\n' "$(date --iso-8601=seconds 2>/dev/null || date)"
printf 'Host: %s\n' "$(hostname)"

if command -v ip >/dev/null 2>&1; then
  printf '\n## Addresses\n'
  ip -brief address
  printf '\n## Routes\n'
  ip route
  if ip route | grep -q '^default '; then
    ok "Default route is present"
  else
    fail "Default route is missing"
  fi
else
  fail "The ip command is unavailable"
fi

printf '\n## DNS\n'
if command -v resolvectl >/dev/null 2>&1; then
  resolvectl status 2>/dev/null || warn "resolvectl could not return status"
elif [[ -r /etc/resolv.conf ]]; then
  sed -n '/^[[:space:]]*nameserver[[:space:]]/p' /etc/resolv.conf
else
  warn "DNS configuration could not be read"
fi

printf '\n## Time\n'
if command -v timedatectl >/dev/null 2>&1; then
  timedatectl show -p NTPSynchronized -p Timezone 2>/dev/null || warn "Time status unavailable"
else
  warn "timedatectl is unavailable"
fi

printf '\n## Listening sockets\n'
if command -v ss >/dev/null 2>&1; then
  ss -lntup 2>/dev/null || warn "Socket ownership requires elevated privileges"
else
  warn "ss is unavailable"
fi

printf '\n## Summary\nFailures: %d\nWarnings: %d\n' "$failures" "$warnings"
printf 'Read-only report. Review and redact addresses before sharing.\n'
((failures == 0))
