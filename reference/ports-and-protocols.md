# Ports and protocols

This is a documentation aid, not a ready-to-import firewall policy. Permit only verified application dependencies.

| Service | Typical port | Direction | Notes |
|---|---:|---|---|
| DNS | 53 TCP/UDP | Clients to DNS | Domain members use internal DNS |
| Kerberos | 88 TCP/UDP | Domain members to DCs | Accurate time required |
| NTP | 123 UDP | Systems to approved time source | Monitor hierarchy |
| LDAP/LDAPS | 389/636 TCP | Approved clients to directory | Prefer protected directory traffic |
| SMB | 445 TCP | Approved clients to file/DC services | Never expose to Internet |
| RDP | 3389 TCP/UDP | VPN/management to session hosts | Never expose directly to Internet |
| HTTPS | 443 TCP | Users/servers to approved services | Inspect ownership and certificates |
| WinRM | 5985/5986 TCP | Management to Windows systems | Restrict to administration paths |
| SQL Server | 1433 TCP | Application to database | Confirm instance/static port |
| MySQL/MariaDB | 3306 TCP | Application to database | Not for user/Internet exposure |
| PostgreSQL | 5432 TCP | Application to database | Restrict and encrypt as supported |
| Zabbix agent | 10050 TCP | Monitoring to agent | Limit to monitoring servers |
| Zabbix server | 10051 TCP | Proxy/agents to server | Architecture dependent |
| SNMP | 161 UDP | Monitoring to device | Prefer SNMPv3 |

Dynamic RPC, vendor-specific database discovery, licensing, printer, scanner, and update traffic may require additional controlled rules.
