# 10 — Network segmentation, Wi-Fi, DNS, and firewall

## Segmentation baseline

Separate user, server, management, backup, voice, printer/IoT, and guest traffic where scale and equipment permit. Inter-zone traffic must be denied by default and allowed only for documented dependencies.

## Example flows

| Source | Destination | Purpose |
|---|---|---|
| Users/RDS | Application and file servers | Approved business protocols |
| Endpoints | Domain services | DNS, Kerberos, LDAP/LDAPS, SMB as required |
| Backup server | Protected workloads | Backup transport and management |
| Monitoring | Managed systems | Agent, API, SNMP or service checks |
| Administrators | Management zone | Controlled administrative access |
| Guest/IoT | Internet | No business-network access |

Use [ports-and-protocols.md](../reference/ports-and-protocols.md) as a documentation starting point, not as a universal firewall rule set.

## DNS and time

Domain members should use authoritative internal DNS. Forwarding and public resolution must be controlled. All security, database, Kerberos, logging, and backup workflows depend on accurate time; monitor the time hierarchy and drift.

## Wi-Fi

Use business-grade authentication, separate guest access, protected management, current firmware, and documented controller backup. Do not bridge guest or unmanaged device traffic into the server network.

## Firewall and egress

Document inbound, inter-zone, VPN, and outbound rules with owner and purpose. Remove temporary rules after expiry. Restrict infrastructure administration to management paths and monitor unexpected outbound traffic from servers.
