# 12 — Monitoring, logging, and alerting

## What to monitor

| Area | Examples |
|---|---|
| Availability | Servers, VMs, VPN, Internet, applications, databases, shares |
| Capacity | CPU, memory, storage, database logs, backup repositories, licences |
| Identity | Failed logins, privileged changes, disabled/stale accounts, MFA gaps |
| Security | EDR health, malware, firewall events, certificate expiry, suspicious mail |
| Backup | Job state, age, verification, copy/immutability state, restore tests |
| Environment | UPS state, battery age, temperature, power and link state |

## Alert design

Every actionable alert needs severity, owner, response target, escalation, evidence link, and closure condition. Tune noisy symptoms rather than ignoring them. Critical alerts must reach a channel that is independent of the failed system where practical.

## Logging

Use accurate time, protected transport where available, appropriate retention, and access control. Centralize logs that materially support incident detection and reconstruction. Avoid collecting sensitive document content when metadata is sufficient.

## Baselines

Record normal storage growth, login patterns, database size, session count, backup duration, CPU/memory utilization, WAN use, and recurring deadline peaks. Capacity decisions should use trends rather than emergency observation.

## Monthly review

Review unhandled alerts, recurring failures, storage forecasts, backup exceptions, endpoint/agent coverage, certificate lifetime, stale monitored systems, and alert-routing tests.
