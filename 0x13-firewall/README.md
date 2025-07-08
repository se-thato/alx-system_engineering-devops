# 0x13. Firewall

## Task: Configure `ufw` on web-01

### Description
This task involves setting up a basic firewall using `ufw` (Uncomplicated Firewall) on the server `web-01`. The goal is to **block all incoming traffic** by default, while allowing incoming connections only on the following **TCP ports**:
- `22` (SSH)
- `80` (HTTP)
- `443` (HTTPS)

This ensures that the server is secured from unwanted incoming access while still allowing essential web and remote access functionality.

### Instructions

1. **Install `ufw`** (Uncomplicated Firewall).
2. **Reset all existing rules** to ensure a clean configuration.
3. **Set default policies:**
   - Deny all incoming connections.
   - Allow all outgoing connections.
4. **Allow specific incoming ports:**
   - `22/tcp`: for SSH access.
   - `80/tcp`: for HTTP web traffic.
   - `443/tcp`: for HTTPS secure traffic.
5. **Enable the firewall** with these rules in effect.
6. **Check the status** to confirm the rules are active.

### Script Used

The following script was created to automate the process:

```bash
#!/bin/bash

# Install UFW
sudo apt-get update
sudo apt-get install -y ufw

# Reset UFW to default
sudo ufw --force reset

# Default policy: deny all incoming, allow all outgoing
sudo ufw default deny incoming
sudo ufw default allow outgoing

# Allow only specific ports
sudo ufw allow 22/tcp    # SSH
sudo ufw allow 80/tcp    # HTTP
sudo ufw allow 443/tcp   # HTTPS

# Enable UFW
sudo ufw --force enable

# Show status
sudo ufw status verbose
