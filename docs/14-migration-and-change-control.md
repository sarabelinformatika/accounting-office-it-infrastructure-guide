# 14 — Migration and change control

## Change record

Every material change should document purpose, systems, owner, risk, prerequisites, backups, validation, maintenance window, user communication, rollback trigger, rollback steps, and approval.

## Migration phases

1. Discovery and dependency confirmation.
2. Supported target architecture and licensing review.
3. Representative test with copied or synthetic data.
4. Pilot users and peripheral validation.
5. Pre-cutover backup and evidence freeze.
6. Controlled migration and technical checks.
7. Business acceptance using real workflows.
8. Monitored stabilization.
9. Delayed, approved decommissioning.

## Validation

Validate user login, application launch, client/company selection, database consistency, concurrent access, imports/exports, printing, PDF generation, signatures, email, portals, mapped resources, scanners, scheduled jobs, backup, monitoring, and licence state.

## Rollback

Rollback must define the decision authority, deadline, data divergence handling, DNS/name changes, licence implications, and how new transactions created after cutover are reconciled. A backup alone is not a rollback plan.

## Freeze periods

Respect payroll, tax, year-end, and filing deadlines. Avoid simultaneous infrastructure, application, identity, and network changes unless the dependency requires them and the combined rollback has been tested.
