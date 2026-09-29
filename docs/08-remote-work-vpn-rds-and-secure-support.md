# 08 — Remote work, VPN, RDS, and secure support

## Approved remote path

Remote access should follow this sequence:

1. managed and healthy device;
2. named user;
3. MFA-protected VPN or identity-aware gateway;
4. explicitly authorized route;
5. RDS/session host or required application service;
6. logging and revocation capability.

Never publish RDP, SMB, database, NAS, hypervisor, or router administration directly to the Internet.

## VPN controls

- Use modern cryptography and individual credentials/certificates.
- Restrict routes and firewall policy to the required services.
- Decide split tunneling from risk and support requirements.
- Revoke access immediately after departure or device loss.
- Monitor repeated failures, unusual geography, concurrent sessions, and stale accounts.
- Maintain a tested emergency revocation procedure.

## RDS controls

Use supported licensing, encrypted transport, Network Level Authentication, controlled redirection, restricted clipboard/drive mapping where required, user profile management, session timeouts, and capacity monitoring. Keep RDS administration separate from user sessions.

## Remote support

Remote-support access must be approved, time-bounded where possible, attributable to a named technician, MFA-protected, logged, and revocable. Disable unattended access that has no current owner or business need.

## Home environment

Do not treat the user's home network as trusted. Protect business data on the endpoint, prohibit family/shared device use, and define printing, storage, screen privacy, and incident-reporting expectations.
