# Linux Commands Reference

## Overview

This document summarizes the essential Linux commands used throughout this project. These commands are commonly used by Linux Administrators, Cloud Engineers, DevOps Engineers, and Site Reliability Engineers (SREs) for system administration, troubleshooting, and automation.

---

## File System Navigation

| Command | Description |
|---------|-------------|
| `pwd` | Display the current working directory. |
| `ls` | List files and directories. |
| `ls -la` | Display detailed information, including hidden files. |
| `cd` | Change the current directory. |
| `mkdir` | Create a new directory. |
| `rmdir` | Remove an empty directory. |

---

## File Operations

| Command | Description |
|---------|-------------|
| `cp` | Copy files or directories. |
| `mv` | Move or rename files. |
| `rm` | Remove files or directories. |
| `touch` | Create an empty file. |
| `cat` | Display file contents. |
| `nano` | Edit text files from the terminal. |

---

## File Permissions

| Command | Description |
|---------|-------------|
| `chmod` | Modify file permissions. |
| `chown` | Change file ownership. |
| `ls -l` | View permissions and ownership. |

Example:

```bash
chmod 755 script.sh
```

---

## User Management

| Command | Description |
|---------|-------------|
| `whoami` | Display the current user. |
| `id` | Display user and group information. |
| `sudo` | Execute commands with elevated privileges. |

---

## Process Management

| Command | Description |
|---------|-------------|
| `ps aux` | Display running processes. |
| `top` | Display real-time system processes. |
| `kill` | Terminate a process using its PID. |

---

## Networking

| Command | Description |
|---------|-------------|
| `ip a` | Display network interfaces. |
| `ss -tuln` | Display listening ports. |
| `ping` | Test network connectivity. |
| `curl` | Send HTTP requests. |

---

## Service Management

| Command | Description |
|---------|-------------|
| `systemctl status` | Display service status. |
| `systemctl start` | Start a service. |
| `systemctl stop` | Stop a service. |
| `systemctl restart` | Restart a service. |

---

## Log Management

| Command | Description |
|---------|-------------|
| `journalctl` | View system logs. |
| `tail -f` | Monitor log files in real time. |
| `less` | Read large log files efficiently. |

---

## Storage

| Command | Description |
|---------|-------------|
| `df -h` | Display disk usage. |
| `du -sh` | Display directory size. |

---

## Git Commands

| Command | Description |
|---------|-------------|
| `git status` | View repository status. |
| `git add .` | Stage changes. |
| `git commit` | Commit staged changes. |
| `git push` | Push changes to GitHub. |

---

## Key Takeaways

This project provided hands-on experience with:

- Linux file system navigation
- File permissions and ownership
- User management
- Service management using systemd
- Network troubleshooting
- Log analysis
- Git version control

These commands form the foundation of Linux system administration and are frequently used in Cloud Engineering and DevOps environments.
