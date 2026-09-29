# 06 — Accounting applications and database services

## Vendor support first

RLB-60, Novitax, Kulcs-Soft, Tensoft, Cashbook, VIKI, ÁNYK, Számlázz.hu integrations, and similar products have different storage, licensing, update, and multi-user requirements. Record the exact supported architecture before changing paths, databases, operating systems, or permissions.

## Application control record

| Control | Required evidence |
|---|---|
| Version and licence | Installed version, licence owner, renewal/reactivation method |
| Data location | Database, working files, exports, attachments, configuration |
| Identity | User roles, service accounts, database permissions |
| Runtime | Services, scheduled tasks, Java/.NET, browser and driver dependencies |
| Network | DNS names, ports, shares, APIs and external endpoints |
| Backup | Vendor-consistent method, frequency, retention and restore procedure |
| Update | Test result, outage, rollback and post-update validation |

## Database rules

- Do not copy open database files as the only backup method.
- Use the database engine's supported backup or application-aware process.
- Monitor free space, transaction logs/binlogs, integrity, service state, backup completion, and backup age.
- Keep database services inaccessible from ordinary user networks unless explicitly required.
- Use dedicated service identities and least privilege.
- Document collation, character set, time zone, and engine version before migration.

## Multi-user and RDS use

Use RDS/terminal services only when the software vendor supports it and the required Windows Server and RDS licences are available. Test user-specific configuration, printers, signing components, temporary folders, mapped drives, concurrency, profile behavior, and per-user application data.

## Change safety

Before an upgrade or migration, take a vendor-consistent backup, record hashes and counts where useful, capture configuration and licences, test restore, define rollback, and block unrelated changes.
