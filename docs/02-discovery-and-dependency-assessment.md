# 02 — Discovery and dependency assessment

Do not redesign or migrate an accounting environment from an asset list alone. Document the business workflow and the hidden dependencies that make each application usable.

## Discovery sequence

1. Identify legal entities, locations, users, roles, seasonal workload, and deadline-critical processes.
2. Inventory endpoints, servers, virtual machines, storage, network devices, printers, scanners, UPS devices, and support tools.
3. Inventory software versions, licences, database engines, services, scheduled tasks, file paths, shares, certificates, and integrations.
4. Map inbound and outbound data flows: email attachments, banking exports, NAV/ÁNYK workflows, invoice APIs, payroll files, document portals, and client exchanges.
5. Record authentication, authorization, administration, update, backup, and restore ownership.
6. Identify single points of failure and undocumented manual workarounds.

## Application dependency record

For each application capture:

- business owner and technical owner;
- vendor and support contact;
- supported operating systems and database engine;
- application, data, configuration, licence, and log locations;
- service accounts and required permissions;
- network ports and name-resolution dependencies;
- printers, scanners, browser components, Java/.NET runtimes, and local drivers;
- update process, outage window, rollback method, and licence reactivation procedure;
- backup method and vendor-approved consistency requirements;
- test user, test company/database, and acceptance criteria.

## Evidence

Prefer exported inventories and screenshots that exclude personal data. Store evidence with collection time, source system, collector, hash where appropriate, and sensitivity label.

## Exit criteria

Discovery is complete only when the team can explain how a user authenticates, launches the application, reaches its data, produces an output, sends or files that output, and how the entire chain is recovered after failure.
