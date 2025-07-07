# 0x0F-load_balancer

## Task: 0-custom_http_response_header

### Description

This task involves configuring an Nginx web server to include a **custom HTTP response header** called `X-Served-By`, which helps identify which server handled a particular request. This is useful for tracking load balancing behavior when multiple web servers are used behind a load balancer.

The solution includes a Bash script that automates the installation and configuration of Nginx on a fresh Ubuntu machine. The script ensures that:

- Nginx is installed and running
- A custom HTTP response header `X-Served-By` is added
- The header contains the hostname of the server

### Script: `0-custom_http_response_header`

#### Features

- Installs and starts Nginx if not already installed
- Modifies the default Nginx site configuration to include th
