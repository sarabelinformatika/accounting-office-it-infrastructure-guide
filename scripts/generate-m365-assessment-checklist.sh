#!/usr/bin/env bash
set -u

tenant=${1:-tenant.example}
date_utc=$(date -u +%Y-%m-%dT%H:%M:%SZ)

printf '# Microsoft 365 assessment checklist\n\n'
printf -- '- Tenant: %s\n' "$tenant"
printf -- '- Generated: %s\n' "$date_utc"
printf -- '- Collector: ____________________\n\n'
printf '## Identity\n\n'
printf -- '- [ ] Named administrator accounts and least privilege reviewed\n'
printf -- '- [ ] MFA and authentication-method coverage exported\n'
printf -- '- [ ] Conditional Access and emergency access reviewed\n'
printf -- '- [ ] Legacy authentication and stale accounts reviewed\n\n'
printf '## Exchange Online\n\n'
printf -- '- [ ] SPF, DKIM, DMARC and accepted domains reviewed\n'
printf -- '- [ ] External forwarding and inbox rules reviewed\n'
printf -- '- [ ] Anti-phishing, malware, attachment and link policies reviewed\n\n'
printf '## Collaboration and data\n\n'
printf -- '- [ ] SharePoint, OneDrive, Teams and guest sharing reviewed\n'
printf -- '- [ ] Retention, sensitivity and DLP assumptions recorded\n'
printf -- '- [ ] Audit availability and alert ownership reviewed\n\n'
printf '## Recovery\n\n'
printf -- '- [ ] Independent backup scope and last successful job reviewed\n'
printf -- '- [ ] Granular restore test recorded\n'
printf -- '- [ ] Tenant recovery and break-glass documentation accessible\n\n'
printf '> This generator performs no tenant queries and changes no configuration.\n'
