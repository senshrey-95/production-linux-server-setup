# SSH Configuration

## Overview

Secure Shell (SSH) is a network protocol used to securely access and manage remote Linux systems over an encrypted connection.

SSH is one of the most important services for Linux Administrators, Cloud Engineers, and DevOps Engineers because it enables secure remote administration of servers.

---

## Objectives

The SSH configuration in this project was designed to:

- Enable secure remote server access
- Disable insecure authentication methods
- Improve overall server security
- Follow Linux security best practices

---

## Configuration Steps

### 1. Install OpenSSH Server

```bash
sudo apt update
sudo apt install openssh-server
```

---

### 2. Verify SSH Service

```bash
sudo systemctl status ssh
```

Expected result:

- SSH service is active
- SSH starts automatically during boot

---

### 3. Generate SSH Key Pair

```bash
ssh-keygen -t rsa -b 4096
```

This creates:

- Private Key
- Public Key

---

### 4. Copy Public Key

```bash
ssh-copy-id username@server-ip
```

---

### 5. Configure SSH

Configuration file:

```text
/etc/ssh/sshd_config
```

Important settings:

```text
PermitRootLogin no
PasswordAuthentication no
PubkeyAuthentication yes
```

---

### 6. Restart SSH

```bash
sudo systemctl restart ssh
```

---

## Verification

Verify SSH is listening:

```bash
ss -tuln
```

Test remote login:

```bash
ssh username@server-ip
```

---

## Security Best Practices

- Disable root login
- Use key-based authentication
- Disable password authentication
- Keep OpenSSH updated
- Restrict firewall access
- Monitor authentication logs

---

## Common Commands

```bash
systemctl status ssh
systemctl restart ssh
journalctl -u ssh
ss -tuln
```

---

## Troubleshooting

| Problem | Solution |
|----------|----------|
| Connection refused | Verify SSH service is running |
| Permission denied | Check authorized_keys and file permissions |
| Authentication failed | Verify SSH key configuration |
| SSH not listening | Check firewall and sshd_config |

---

## Interview Questions

### Why is SSH preferred over Telnet?

SSH encrypts all communication, whereas Telnet sends data in plain text.

---

### What is key-based authentication?

Authentication using a public/private key pair instead of passwords.

---

### What is the difference between public and private keys?

- Public key is stored on the server.
- Private key remains securely on the client.

---

### Why disable root login?

To reduce the attack surface and improve server security.

---

## Key Takeaways

This project demonstrated:

- Secure remote administration
- SSH server configuration
- Key-based authentication
- SSH hardening
- Linux security best practices
