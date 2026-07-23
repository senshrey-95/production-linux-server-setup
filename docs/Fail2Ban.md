# Fail2Ban Configuration

## Overview

Fail2Ban is an intrusion prevention tool that protects Linux servers against brute-force attacks by monitoring log files and automatically banning IP addresses that generate repeated failed authentication attempts.

In this project, Fail2Ban was configured to protect the SSH service from unauthorized login attempts.

---

## Objectives

The Fail2Ban configuration was implemented to:

- Protect the server against brute-force attacks
- Monitor failed SSH login attempts
- Automatically block malicious IP addresses
- Improve overall Linux server security

---

## Installation

Install Fail2Ban:

```bash
sudo apt update
sudo apt install fail2ban
```

Verify installation:

```bash
sudo systemctl status fail2ban
```

---

## Configuration

Fail2Ban uses the following configuration files:

```text
/etc/fail2ban/jail.conf
/etc/fail2ban/jail.local
```

A custom `jail.local` file was created to override the default configuration.

Example:

```ini
[sshd]
enabled = true
port = ssh
logpath = %(sshd_log)s
backend = systemd
maxretry = 5
findtime = 10m
bantime = 1h
```

---

## Start and Enable Service

Start Fail2Ban:

```bash
sudo systemctl start fail2ban
```

Enable on boot:

```bash
sudo systemctl enable fail2ban
```

---

## Verification

Check Fail2Ban status:

```bash
sudo systemctl status fail2ban
```

View active jails:

```bash
sudo fail2ban-client status
```

Check SSH jail:

```bash
sudo fail2ban-client status sshd
```

---

## Useful Commands

Restart service:

```bash
sudo systemctl restart fail2ban
```

View logs:

```bash
journalctl -u fail2ban
```

List banned IPs:

```bash
sudo fail2ban-client status sshd
```

Unban an IP:

```bash
sudo fail2ban-client set sshd unbanip <IP_ADDRESS>
```

---

## Security Best Practices

- Protect SSH using Fail2Ban
- Use key-based SSH authentication
- Disable root login
- Keep Fail2Ban updated
- Monitor authentication logs regularly

---

## Troubleshooting

| Problem | Solution |
|----------|----------|
| Fail2Ban service not running | Restart the service and review logs |
| SSH jail inactive | Verify `enabled = true` in `jail.local` |
| IP not banned | Check log path and retry settings |
| Configuration changes not applied | Restart Fail2Ban after editing configuration |

---

## Interview Questions

### What is Fail2Ban?

Fail2Ban is a log-monitoring tool that automatically blocks IP addresses after repeated failed login attempts.

---

### How does Fail2Ban work?

It continuously monitors log files, detects suspicious activity based on configurable rules, and temporarily bans offending IP addresses using firewall rules.

---

### Why is Fail2Ban important?

It reduces the risk of brute-force attacks against services such as SSH by automatically blocking malicious clients.

---

### What is a jail?

A jail defines which service to monitor, which log file to inspect, and what action to take when suspicious activity is detected.

---

## Key Takeaways

Through this project, I gained hands-on experience with:

- Intrusion prevention
- SSH protection
- Log monitoring
- Automated IP banning
- Linux server hardening
- Security best practices
