# Troubleshooting Guide

## Overview

Throughout this project, several configuration and operational issues were encountered while setting up and securing the Ubuntu Linux server.

This document summarizes the problems, root causes, and resolutions to demonstrate a structured troubleshooting approach.

---

# Troubleshooting Workflow

The following troubleshooting methodology was followed throughout the project:

1. Identify the issue
2. Review service status
3. Check configuration files
4. Examine system logs
5. Apply corrective action
6. Validate the fix

---

# Issue 1: SSH Connection Failed

## Symptoms

- Unable to connect remotely
- Connection refused

## Possible Causes

- SSH service stopped
- Firewall blocking port 22
- Incorrect SSH configuration

## Diagnosis

```bash
sudo systemctl status ssh
```

```bash
ss -tuln
```

## Resolution

- Started SSH service
- Allowed SSH through UFW
- Restarted SSH

---

# Issue 2: Nginx Configuration Error

## Symptoms

Nginx failed to start after modifying the Virtual Host configuration.

## Diagnosis

```bash
sudo nginx -t
```

## Resolution

- Corrected syntax errors
- Verified Virtual Host configuration
- Restarted Nginx

---

# Issue 3: Website Not Accessible

## Symptoms

Browser displayed:

```
Unable to connect
```

## Diagnosis

Checked:

```bash
sudo systemctl status nginx
```

Verified:

```bash
curl localhost
```

Reviewed:

```bash
sudo ufw status
```

## Resolution

- Started Nginx
- Allowed HTTP traffic
- Reloaded the firewall

---

# Issue 4: UFW Blocking Traffic

## Symptoms

SSH or HTTP connections were blocked.

## Diagnosis

```bash
sudo ufw status verbose
```

## Resolution

Allowed required ports:

```bash
sudo ufw allow 22/tcp
sudo ufw allow 80/tcp
sudo ufw allow 443/tcp
```

---

# Issue 5: Fail2Ban Not Protecting SSH

## Symptoms

No active SSH jail.

## Diagnosis

```bash
sudo fail2ban-client status
```

Checked:

```bash
sudo systemctl status fail2ban
```

## Resolution

- Enabled SSH jail
- Restarted Fail2Ban
- Verified active jail

---

# Issue 6: systemd Service Failed

## Symptoms

Custom service would not start.

## Diagnosis

```bash
sudo systemctl status hello.service
```

Checked logs:

```bash
journalctl -u hello.service
```

## Resolution

- Fixed script permissions
- Updated service configuration
- Reloaded systemd

```bash
sudo systemctl daemon-reload
```

Restarted the service.

---

# Useful Troubleshooting Commands

## Services

```bash
systemctl status
systemctl restart
journalctl
```

---

## Networking

```bash
ip a
ss -tuln
ping
curl localhost
```

---

## Processes

```bash
ps aux
top
```

---

## Storage

```bash
df -h
du -sh
```

---

# Lessons Learned

This project reinforced the importance of:

- Reading error messages carefully
- Checking service status before changing configurations
- Validating configurations before restarting services
- Reviewing logs to identify root causes
- Applying changes incrementally
- Verifying every fix after implementation

---

# Key Takeaways

Through troubleshooting this project, I developed practical experience with:

- Linux system diagnostics
- Service troubleshooting
- Network troubleshooting
- Firewall verification
- Log analysis
- Root cause analysis
- System recovery
- Production-style debugging
