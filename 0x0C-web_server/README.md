# File Transfer Script – `0-transfer_file`

##  Task Summary

This Bash script transfers a file from a client machine to a remote server using the `scp` command.

---

## Requirements

- The script must:
  - Accept **4 parameters**:


# Install Nginx Web Server

## Task Summary

This task involves writing a Bash script named `1-install_nginx_web_server` that:

- Installs the **Nginx** web server on a fresh Ubuntu server.
- Configures it to:
  - **Listen on port 80** (default HTTP port).
  - **Serve a simple page** that displays `Hello World!` when accessed at the root path `/`.
- Does **not** use `systemctl` to restart Nginx.

---

## Requirements

- Nginx must be installed using `apt-get`, with the `-y` flag to auto-confirm prompts.
- The server must listen on **port 80**.
- When querying `http://localhost/` or the public server IP via `curl`, the response must contain the string:
  ```text
  Hello World!

# 3. Redirection

## Task Summary

The goal of this task is to configure an Nginx server on a fresh Ubuntu machine so that:

- Visiting `/redirect_me` results in a **301 Moved Permanently** redirect.
- The redirection points to a new URL (e.g. YouTube).
- The setup is automated using a Bash script called `3-redirection`.

---

## Requirements

- The Bash script must:
  - Install and start **Nginx**
  - Add a location block for `/redirect_me` in the default Nginx site configuration
  - Use **HTTP 301** for the redirection
- The redirection URL should be:  
  `https://www.youtube.com/watch?v=QH2-TGUlwu4`
- Use `sed` to modify the `/etc/nginx/sites-available/default` file
- Do **not use `systemctl`**
- The script should be **idempotent** (can be run multiple times safely)

---

## Script: `3-redirection`

This script must:
1. Install Nginx (with `-y` flag)
2. Add a `location /redirect_me` block with 301 redirect
3. Reload or restart Nginx using `service`

---

## Expected Output

Once the script runs, this should work:

```bash
curl -sI http://172.25.226.73/redirect_me/
