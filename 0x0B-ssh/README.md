#!/usr/bin/env bash

# 0x0B-ssh

## Task 0: Use a Private SSH Key to Connect to a Server

### Task Description

This task involves creating a Bash script that uses SSH to connect to a remote server using a specified private key.

The goal is to automate an SSH connection using the private key located at:

###  Requirements

- The SSH connection must:
  - Use the **private key** located at `~/.ssh/school`
  - Connect as user **ubuntu**
  - Use only **single-character flags** (`-i`)
  - **Not** use the `-l` flag
  - **Not** handle passphrase-protected keys


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
