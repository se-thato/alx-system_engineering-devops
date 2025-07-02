# 0x0B-ssh

## Task: Create an SSH Key Pair

###  Task Description

This task involves writing a Bash script that generates a secure RSA SSH key pair, which can be used for secure remote access or authentication.

###Script: `1-create_ssh_key_pair`

This script automatically creates a 4096-bit RSA SSH key pair with the following specifications:

- **Private Key Name:** `school`
- **Public Key Name:** `school.pub`
- **Key Type:** RSA
- **Key Size:** 4096 bits
- **Passphrase:** `betty`

### ow It Works

The script uses the `ssh-keygen` command with specific options to automate the creation process:

```bash
#!/bin/bash
ssh-keygen -t rsa -b 4096 -f school -N "betty"
