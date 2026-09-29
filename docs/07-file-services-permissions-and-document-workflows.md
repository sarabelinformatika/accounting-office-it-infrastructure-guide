# 07 — File services, permissions, and document workflows

## Share design

Create shares around business ownership and sensitivity, not individual preferences. Assign permissions to role groups rather than directly to users. Separate accounting production data, payroll, management, client exchange, scanning, application exports, and software distribution.

## Permission model

- Grant the minimum required read, modify, or administrative rights.
- Keep share and NTFS permissions understandable; avoid uncontrolled nesting.
- Disable inheritance only with a documented reason.
- Review access after role changes and departures.
- Do not use broad groups such as Everyone or Domain Users for restricted data.
- Record exceptional cross-client access.

## Document workflow

Define how files enter the office, are scanned, named, validated, processed, approved, exported, transmitted, retained, and deleted. Secure upload portals or controlled collaboration are preferable to unencrypted attachments for sensitive transfers.

## Resilience

Use monitored storage, snapshots/previous versions for fast user recovery, and separate backups for disaster recovery. Snapshots are not backups and must not share the only failure domain with production.

## Ransomware containment

Limit write access, remove obsolete shares, prevent endpoints from reaching backup administration, alert on unusual deletion/encryption behavior, and maintain a known-good offline or immutable recovery point.

## Audit

Enable targeted access auditing for high-risk folders where operationally justified. Avoid collecting excessive logs without ownership, retention, or review.
