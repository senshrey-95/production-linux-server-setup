# 🚀 Production Linux Server Setup

![Ubuntu](https://img.shields.io/badge/Ubuntu-22.04-E95420?logo=ubuntu&logoColor=white)
![Docker](https://img.shields.io/badge/Docker-2496ED?logo=docker&logoColor=white)
![Nginx](https://img.shields.io/badge/Nginx-009639?logo=nginx&logoColor=white)
![Bash](https://img.shields.io/badge/Bash-121011?logo=gnubash&logoColor=white)
![Git](https://img.shields.io/badge/Git-F05032?logo=git&logoColor=white)
![Linux](https://img.shields.io/badge/Linux-System%20Administration-FCC624?logo=linux&logoColor=black)

A **production-style Ubuntu Linux Server** project demonstrating Linux
Administration, Server Hardening, Docker, Nginx, Bash Scripting,
Monitoring, Backup Automation, Log Rotation, and System Services.

------------------------------------------------------------------------

## 📊 Repository Highlights

-   📁 Well-structured project repository
-   🖥️ Production-style Ubuntu Linux server setup
-   🛡️ Security hardening with SSH, UFW, and Fail2Ban
-   🌐 Nginx web server deployment
-   🐳 Docker & Docker Compose configuration
-   📜 Bash automation scripts
-   📸 12+ implementation screenshots
-   📈 40+ Git commits documenting project progress

------------------------------------------------------------------------

## 📑 Table of Contents

-   Project Overview
-   Key Outcomes
-   Why This Project?
-   Project Objectives
-   Prerequisites
-   Getting Started
-   Features
-   Architecture
-   Project Structure
-   Technologies Used
-   Security Hardening
-   Docker & Docker Compose
-   Nginx
-   systemd
-   Monitoring Scripts
-   Backup Automation
-   Log Rotation
-   Skills Demonstrated
-   Future Enhancements
-   Validation
-   Project Screenshots
-   Lessons Learned
-   License
-   Author

------------------------------------------------------------------------

## 📌 Project Overview

This repository demonstrates the design, configuration, and
administration of a production-style Ubuntu Linux server. It focuses on
Linux administration, security hardening, automation, monitoring, and
infrastructure management practices commonly used in Cloud Engineering,
DevOps, and Site Reliability Engineering (SRE).

The project emphasizes secure server configuration, operational
reliability, automation, documentation, and troubleshooting through
hands-on practical exercises.

## 🎯 Key Outcomes

-   Built and secured a production-style Ubuntu Linux server.
-   Configured secure remote administration using SSH.
-   Deployed and managed an Nginx web server.
-   Implemented Docker and Docker Compose.
-   Automated backups and monitoring with Bash and Cron.
-   Applied Linux security best practices with UFW and Fail2Ban.
-   Documented the implementation using Git and GitHub.

## ❓ Why This Project?

This project was created to strengthen practical Linux administration
skills beyond theoretical learning.

It simulates common operational tasks performed by Linux Administrators,
Cloud Engineers, and DevOps Engineers, including:

-   Server provisioning
-   User administration
-   Service management
-   Web server deployment
-   Server security
-   Automation
-   Monitoring
-   Troubleshooting

## 🎯 Project Objectives

-   Configure a production-style Linux server
-   Secure remote SSH access
-   Deploy an Nginx web server
-   Run containers using Docker & Docker Compose
-   Configure systemd services
-   Automate backups with Cron
-   Rotate logs using Logrotate
-   Build reusable Bash monitoring scripts
-   Practice Git & GitHub workflow

------------------------------------------------------------------------

## 📋 Prerequisites

Before reproducing this project, ensure you have:

-   Ubuntu 22.04 LTS
-   Oracle VirtualBox or VMware Workstation
-   Git
-   Internet connectivity
-   Basic Linux command-line knowledge

------------------------------------------------------------------------

## 🚀 Getting Started

### Clone the repository

``` bash
git clone https://github.com/senshrey-95/production-linux-server-setup.git
cd production-linux-server-setup
```

### Follow the modules

Complete the project in the following order:

1.  SSH Configuration
2.  Nginx
3.  Docker & Docker Compose
4.  systemd
5.  Cron Jobs
6.  Logrotate
7.  Monitoring Scripts

Finally, compare your setup with the screenshots included in this
repository.

------------------------------------------------------------------------

## ✨ Features

-   Ubuntu Server Administration
-   Linux File Permissions
-   User & Group Management
-   SSH Configuration
-   UFW Firewall
-   Fail2Ban
-   Docker
-   Docker Compose
-   Nginx
-   systemd
-   Cron Jobs
-   Bash Scripting
-   Logrotate
-   Monitoring Scripts
-   Automated Backups

------------------------------------------------------------------------

## 🏗️ Architecture

The following diagram illustrates the overall architecture.

``` html
<p align="center">
  <img src="architecture/architecture-diagram.png" alt="Production Linux Server Architecture" width="1000">
</p>
```

------------------------------------------------------------------------

## 📂 Project Structure

``` text
production-linux-server-setup/
├── architecture/
├── assets/
├── cron/
├── docker/
├── docs/
├── logrotate/
├── nginx/
├── screenshots/
├── scripts/
├── ssh/
├── systemd/
└── README.md
```

------------------------------------------------------------------------

## ⚙️ Technologies Used

  Category             Technologies
  -------------------- ------------------------
  Operating System     Ubuntu 22.04 LTS
  Virtualization       Oracle VirtualBox
  Web Server           Nginx
  Containers           Docker, Docker Compose
  Security             SSH, UFW, Fail2Ban
  Service Management   systemd
  Automation           Bash, Cron
  Log Management       Logrotate
  Version Control      Git, GitHub

------------------------------------------------------------------------

## 🔒 Security Hardening

-   SSH configuration
-   User and group management
-   Linux file permissions
-   UFW firewall
-   Fail2Ban intrusion prevention
-   Service management with systemd

------------------------------------------------------------------------

## 🐳 Docker & Docker Compose

Implemented:

-   Docker installation
-   Docker Compose
-   Multi-container deployment
-   Docker networking
-   Persistent volumes

------------------------------------------------------------------------

## 🌐 Nginx

Configured:

-   Custom Virtual Host
-   Static website hosting
-   Configuration testing
-   Local HTTP validation

------------------------------------------------------------------------

## ⚙️ systemd

Created a custom service (`hello.service`) demonstrating service
creation, enable/disable, start/stop, and log inspection using
`journalctl`.

------------------------------------------------------------------------

## 📊 Monitoring Scripts

Custom Bash scripts monitor:

-   CPU Usage
-   Memory Usage
-   Disk Usage
-   Overall System Health

------------------------------------------------------------------------

## 💾 Backup Automation

-   Backup Bash script
-   Cron scheduling
-   Compressed archives
-   Backup verification

------------------------------------------------------------------------

## 📄 Log Rotation

Configured using Logrotate:

-   Daily rotation
-   Compression
-   Automatic cleanup
-   File retention

------------------------------------------------------------------------

## 🧠 Skills Demonstrated

### Linux Administration

-   User & Group Management
-   File Permissions
-   Process Management

### Server Security

-   SSH
-   UFW
-   Fail2Ban

### Web Services

-   Nginx
-   systemd

### Automation

-   Bash
-   Cron
-   Logrotate

### Containers

-   Docker
-   Docker Compose

### Version Control

-   Git
-   GitHub

------------------------------------------------------------------------

## 🚀 Future Enhancements

-   HTTPS using Let's Encrypt
-   Reverse Proxy configuration
-   Centralized logging
-   GitHub Actions CI/CD
-   Terraform
-   Kubernetes
-   Prometheus
-   Grafana

------------------------------------------------------------------------

## ✅ Validation

The following components were successfully configured and verified:

-   ✅ SSH connectivity
-   ✅ Nginx service availability
-   ✅ Docker containers
-   ✅ Docker Compose
-   ✅ systemd service
-   ✅ UFW firewall
-   ✅ Fail2Ban
-   ✅ Backup automation
-   ✅ Monitoring scripts
-   ✅ Logrotate

------------------------------------------------------------------------

## 📸 Project Screenshots

Keep your existing 12 screenshots exactly as they are:

1.  Server Information
2.  Nginx Web Server
3.  Docker
4.  Docker Compose
5.  systemd Service
6.  UFW Firewall
7.  Fail2Ban
8.  Automated Backup
9.  Backup Script
10. Monitoring Scripts
11. Logrotate
12. Running Services

------------------------------------------------------------------------

## 📚 Lessons Learned

This project strengthened my practical understanding of:

-   Linux system administration
-   User, group, and file permission management
-   SSH hardening
-   Service management using systemd
-   Nginx configuration
-   Docker fundamentals
-   Firewall configuration with UFW
-   Intrusion prevention using Fail2Ban
-   Automation with Bash and Cron
-   Log management and troubleshooting
-   Git version control and documentation

------------------------------------------------------------------------

## 📄 License

This project is licensed under the MIT License. Update this section if
your repository uses a different license.

------------------------------------------------------------------------

## 👩‍💻 Author

**Shreyasi Sen**

-   GitHub: https://github.com/senshrey-95
-   LinkedIn: https://www.linkedin.com/in/shreyasi-sen-022932375/

------------------------------------------------------------------------

Thank you for taking the time to explore this project.

If you have any feedback, suggestions, or questions, feel free to
connect with me on LinkedIn or GitHub.

⭐ If you found this repository useful, consider starring it.
