# UFW Firewall Configuration

## Overview

Uncomplicated Firewall (UFW) is the default firewall management tool for Ubuntu Linux. It provides a simple interface for configuring firewall rules using iptables in the background.

In this project, UFW was configured to secure the server by allowing only the required network ports while blocking all unnecessary inbound traffic.

---

## Objectives

The firewall configuration was implemented to:

- Protect the Linux server from unauthorized access
- Allow only required services
- Reduce the server's attack surface
- Follow security best practices

---

## Installation

Install UFW if it is not already available:

```bash
sudo apt update
sudo apt install ufw
```

---

## Enable UFW

```bash
sudo ufw enable
```

Verify status:

```bash
sudo ufw status
```

---

## Allow Required Services

Allow SSH:

```bash
sudo ufw allow 22/tcp
```

Allow HTTP:

```bash
sudo ufw allow 80/tcp
```

Allow HTTPS:

```bash
sudo ufw allow 443/tcp
```

---

## Deny Unnecessary Traffic

By default:

```bash
sudo ufw default deny incoming
sudo ufw default allow outgoing
```

---

## Useful Commands

Check firewall status:

```bash
sudo ufw status verbose
```

List firewall rules:

```bash
sudo ufw status numbered
```

Delete a rule:

```bash
sudo ufw delete <rule-number>
```

Disable firewall:

```bash
sudo ufw disable
```

Reload firewall:

```bash
sudo ufw reload
```

---

## Verification

Verify active firewall rules:

```bash
sudo ufw status verbose
```

Expected output:

- SSH allowed
- HTTP allowed
- HTTPS allowed
- Firewall active

---

## Security Best Practices

- Allow only required ports
- Block unused services
- Keep SSH restricted
- Review firewall rules regularly
- Use least privilege networking

---

## Common Ports

| Service | Port |
|----------|-----:|
| SSH | 22 |
| HTTP | 80 |
| HTTPS | 443 |

---

## Troubleshooting

| Problem | Solution |
|----------|----------|
| Cannot connect via SSH | Ensure port 22 is allowed before enabling UFW |
| Website inaccessible | Verify HTTP/HTTPS rules |
| Firewall inactive | Enable UFW using `sudo ufw enable` |
| Rules not applied | Reload UFW |

---

## Interview Questions

### What is UFW?

UFW is a firewall management tool for Ubuntu that simplifies the configuration of iptables.

---

### Why use a firewall?

A firewall controls incoming and outgoing network traffic, preventing unauthorized access while allowing legitimate connections.

---

### Why allow SSH before enabling UFW?

If SSH is not allowed before enabling the firewall, remote administrators can lock themselves out of the server.

---

### What is the difference between incoming and outgoing rules?

- Incoming rules control traffic entering the server.
- Outgoing rules control traffic leaving the server.

---

## Key Takeaways

Through this project, I gained hands-on experience with:

- Firewall configuration
- Network security
- Port management
- Traffic filtering
- Linux server hardening
- Secure service exposure
