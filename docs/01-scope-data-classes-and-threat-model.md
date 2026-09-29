# 01 — Scope, data classes, and threat model

## Scope

The environment includes every system that creates, receives, stores, processes, transmits, backs up, or administers client and office data: endpoints, servers, business applications, databases, scanners, printers, mailboxes, cloud services, remote-access paths, backup targets, network devices, and support tooling.

## Data classification

| Class | Examples | Minimum handling |
|---|---|---|
| Restricted | Payroll, tax records, identity documents, credentials, recovery keys | Named access, encryption, logging, controlled export |
| Confidential | Client ledgers, contracts, invoices, reports, correspondence | Least privilege, protected sharing, versioned backup |
| Internal | Procedures, asset records, internal contacts | Staff-only access and retention |
| Public | Published contact and marketing information | Integrity review before publication |

The office should document the lawful purpose, owner, location, retention requirement, and approved transfer method for each data set. Classification must follow the actual content, not merely the folder name.

## Primary threats

- Ransomware affecting endpoints, shared files, databases, and reachable backups.
- Credential theft through phishing, reused passwords, token theft, or remote-support abuse.
- Unauthorized access caused by shared accounts or stale former-employee access.
- Database corruption or inconsistent backups during application operation.
- Data leakage through email, unmanaged cloud storage, USB media, personal devices, or misdirected sharing.
- Service interruption caused by hardware failure, full storage, expired certificates, ISP failure, or unsupported software.
- Supplier compromise involving application vendors, hosting providers, IT support, or remote-management tools.
- Human error during upgrades, migrations, payroll deadlines, tax filing, or bulk data operations.

## Risk method

Record each risk with asset, threat, vulnerability, likelihood, impact, existing control, owner, treatment, target date, and residual risk. High-impact events with weak detection or untested recovery require priority even if they are considered unlikely.

## Minimum acceptance

- Every restricted data set has an owner and approved storage location.
- Every privileged, remote, and cloud access path uses a named identity.
- Critical systems have defined RTO and RPO.
- Backups include application-consistent data and have passed an isolated restore test.
- Known exceptions have owners and expiry dates.
