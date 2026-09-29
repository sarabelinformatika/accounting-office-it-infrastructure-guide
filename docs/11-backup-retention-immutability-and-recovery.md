# 11 — Backup, retention, immutability, and recovery

## Coverage

The backup inventory should include:

- domain controllers and identity configuration;
- file services, permissions, and previous versions;
- application servers, databases, configuration, licences, and scheduled tasks;
- virtualization configuration and critical virtual machines;
- Microsoft 365 data and selected configuration;
- firewall, switch, Wi-Fi, NAS, UPS, monitoring, and remote-support configuration;
- recovery keys, certificates, and documented secrets procedures;
- operational records required to rebuild service.

## Architecture

Use a 3-2-1-style design as a starting point: multiple copies, different failure domains, and an off-site copy. Include immutability or offline protection where feasible. Production administrators and ordinary users must not be able to erase every recovery point through one compromised identity.

## Retention

Retention follows RPO, operational recovery, legal/business needs, storage capacity, and ransomware dwell-time assumptions. Record daily, weekly, monthly, annual, and application-specific retention separately. Retention is not proven until pruning, capacity, and restore behavior are observed.

## Recovery testing

Test at least:

- one file and permission restore;
- one application/database restore;
- one complete server or VM restore;
- identity recovery;
- Microsoft 365 item recovery;
- recovery when production credentials or network paths are unavailable.

Isolate tests, record elapsed time, evidence, missing dependencies, data loss, and corrective actions.

## Backup monitoring

Alert on failed jobs, missed schedules, aged restore points, repository capacity, immutability/off-site copy failures, verification errors, and configuration drift. A successful job without a usable restore is not a successful backup program.
