# 0x10-https_ssl - World wide web

## Task Overview

This task focuses on DNS configuration and Bash scripting. You're required to:
1. Configure multiple subdomains to point to the correct IP addresses.
2. Create a Bash script to audit DNS records using `dig` and `awk`.

---

## DNS Subdomain Configuration

Add the following **A records** to your domain's DNS zone:

| Subdomain | Type | Points To (IP Address)      |
|-----------|------|-----------------------------|
| www       | A    | Your Load Balancer IP (lb-01) |
| lb-01     | A    | Your Load Balancer IP         |
| web-01    | A    | IP of web server 1            |
| web-02    | A    | IP of web server 2            |

> emove default DNS records if they conflict with these subdomains.

---

## Bash Script: `0-world_wide_web`

This script audits DNS records for the provided domain and subdomains using the `dig` tool and `awk`.

### Requirements
- The script must:
  - Accept a `domain` as the first (mandatory) argument.
  - Optionally accept a `subdomain` as the second argument.
  - Display DNS information in the format:
    ```
    The subdomain [SUB_DOMAIN] is a [RECORD_TYPE] record and points to [DESTINATION]
    ```
  - Use at least one Bash function.
  - Ignore shellcheck case SC2086.

---

### Usage

Make the script executable:

```bash
chmod +x 0-world_wide_web
