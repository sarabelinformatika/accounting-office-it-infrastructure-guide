# 05 — Endpoints, encryption, EDR, and patching

## Managed endpoint baseline

- Supported Windows edition and hardware.
- Secure Boot and TPM enabled where supported.
- BitLocker or equivalent full-disk encryption with centrally protected recovery keys.
- Endpoint protection/EDR with tamper protection and alert routing.
- Automatic operating-system, browser, office suite, PDF reader, Java/.NET, and third-party application updates.
- Standard-user daily operation; controlled elevation only.
- Screen lock, firewall, browser hardening, and restricted local sharing.
- Inventory, health, encryption, and last-seen reporting.

## Application compatibility

Accounting deadlines make uncontrolled updates risky, but indefinite delay is worse. Maintain pilot devices or a test session host that represents production. Test application launch, database connection, printing, export, signing, browser integrations, and vendor updates before broad rollout.

## Removable media

Disable or restrict mass storage where feasible. If business use is required, allow approved encrypted devices, record the owner and purpose, scan content, and prohibit backup storage on ordinary USB media.

## Local data

Redirect or synchronize approved working folders only after application compatibility testing. Local caches, downloads, exports, and temporary folders may contain restricted data even when the authoritative database is on a server.

## Replacement and disposal

Before reassignment or disposal, verify backup/transfer, revoke device access, remove management records, erase storage using an approved method, and retain disposal evidence.
