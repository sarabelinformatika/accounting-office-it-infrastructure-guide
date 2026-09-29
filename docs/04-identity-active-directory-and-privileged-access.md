# 04 — Identity, Active Directory, and privileged access

## Identity baseline

- One named account per person; no shared daily-use accounts.
- Separate standard and administrative identities.
- MFA for Microsoft 365, VPN, remote support, privileged portals, and password managers.
- Role-based groups for applications, shares, remote access, and administration.
- Joiner, mover, and leaver workflow with owner approval and completion evidence.
- At least two protected break-glass identities with tested access and monitored use.

## Active Directory

Use supported Windows Server versions, healthy DNS and time synchronization, protected domain controllers, and regular system-state-aware backups. Avoid installing unrelated business applications on domain controllers.

Organize users, computers, servers, service accounts, and privileged identities so policies can be tested and delegated safely. Group Policy changes require a pilot group, rollback, and validation record.

## Privileged access

- Do not browse email or the web from administrative sessions.
- Restrict server and management login rights.
- Use Windows LAPS for supported local administrator password management.
- Prefer managed service accounts where application support permits.
- Review privileged group membership and stale accounts regularly.
- Log administrative activity and investigate unexpected privilege assignments.

## Passwords and secrets

Store infrastructure, service, database, recovery, and API secrets in an approved password manager or secrets system. Do not place passwords in scripts, shared documents, ticket comments, or repository files.

## Quarterly evidence

Export users, privileged groups, inactive identities, MFA coverage, service accounts, emergency accounts, and exceptions. The review must have an accountable approver, not only an automated report.
