# Webstack Monitoring with Datadog

This project focuses on monitoring a web server using [Datadog](https://www.datadoghq.com/) as part of the ALX System Engineering & DevOps curriculum.

## Objectives

- Sign up and configure a Datadog account (US1 region).
- Install the Datadog agent on a server named `XX-web-01`.
- Monitor system metrics and logs.
- Create and use API and Application Keys.
- Ensure visibility of the host in the Datadog dashboard.
- Verify setup using Datadog’s API.


## Setup Process

### 1. Datadog Account
- Created a Datadog account via https://www.datadoghq.com
- Region: **US1** (`https://app.datadoghq.com`)

### 2. Installation on `web-01`
- Installed Datadog agent using the provided install script.
- Set hostname of the server to `XX-web-01`.
- Restarted agent to begin sending metrics.

```bash
DD_API_KEY=<your_api_key> bash -c "$(curl -L https://s3.amazonaws.com/dd-agent/scripts/install_script.sh)"
sudo hostnamectl set-hostname XX-web-01
sudo systemctl restart datadog-agent
