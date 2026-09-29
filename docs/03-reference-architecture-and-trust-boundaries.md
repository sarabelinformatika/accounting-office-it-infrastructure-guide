# 03 — Reference architecture and trust boundaries

## Logical zones

| Zone | Typical systems | Rule |
|---|---|---|
| User | Managed workstations and thin clients | No direct infrastructure administration |
| Server | AD, file, RDS, application, and database servers | Only required east-west flows |
| Management | Hypervisor, NAS, switches, firewalls, monitoring | Administrators and jump hosts only |
| Backup | Backup server, repository, immutable/off-site copy | Pull or tightly controlled flows |
| Guest/IoT | Guest Wi-Fi, displays, unmanaged peripherals | Internet only; no business LAN access |
| Remote | VPN clients and approved support channels | MFA, device control, explicit routes |

## Recommended service pattern

- Two identity services where the outage impact justifies redundancy.
- Separate terminal/session and file/application roles when scale and licensing permit.
- Virtualization with reserved capacity, monitored storage, and documented recovery.
- Business applications on vendor-supported server and database combinations.
- Local shared storage with group-based permissions and previous-version capability.
- A backup system that is not administered through ordinary user credentials.
- Off-site or cloud copy isolated from the production authentication failure domain.

## Trust boundaries

Trust must not be inferred from physical location. Treat user endpoints, VPN clients, cloud services, application vendors, remote-support tools, printers, and backup infrastructure as separate security boundaries.

For each boundary document:

- source identity and device;
- destination service and port;
- authentication and encryption;
- authorization owner;
- logging and alerting;
- failure behavior;
- emergency access and revocation.

## Availability design

Redundancy is justified by business impact, not appearance. A second server does not create resilience if both depend on one storage pool, one switch, one administrator account, or one untested backup chain.
