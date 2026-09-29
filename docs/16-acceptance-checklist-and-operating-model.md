# 16 — Acceptance checklist and operating model

## Production acceptance

- [ ] Scope, data classes, owners, RTO, and RPO are approved.
- [ ] Assets, applications, databases, licences, integrations, and suppliers are recorded.
- [ ] Named identities, MFA, privileged separation, emergency access, and leaver process are tested.
- [ ] Endpoint encryption, EDR, firewall, patching, and inventory coverage are verified.
- [ ] Application workflows, multi-user operation, printing, export, portals, and scheduled tasks pass.
- [ ] File permissions and external-sharing paths are approved.
- [ ] Internet exposure and inter-zone firewall rules match the dependency record.
- [ ] Remote access and support are MFA-protected, logged, and revocable.
- [ ] Microsoft 365 identity, mail, collaboration, audit, and backup controls are reviewed.
- [ ] Backup coverage, off-site/immutable protection, retention, alerting, and isolated restore tests pass.
- [ ] Monitoring has owners, tested routing, thresholds, and escalation.
- [ ] Incident, continuity, supplier, change, rollback, and recovery records are accessible.
- [ ] Exceptions have owners and expiry dates.
- [ ] Business owner signs the acceptance record.

## Operating cadence

| Frequency | Activities |
|---|---|
| Daily | Backup and critical alert review |
| Weekly | Patch/EDR exceptions, capacity, failed jobs, remote-access anomalies |
| Monthly | Account changes, monitoring quality, restore-point age, supplier issues |
| Quarterly | Access review, recovery sample, firewall/VPN rules, documentation |
| Annually | Full recovery/tabletop exercise, risk review, lifecycle and licensing plan |
| Per change | Backup, validation, rollback, approval, evidence |

## Service ownership

Each service needs a business owner, technical owner, supplier contact, support window, recovery target, maintenance process, documentation location, monitoring, backup, and decommissioning criteria.

## Final principle

The operating model is successful when routine work is predictable, anomalies are visible, access is attributable, changes are reversible, and recovery is demonstrated before an emergency.
