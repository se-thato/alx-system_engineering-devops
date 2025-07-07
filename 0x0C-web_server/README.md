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
