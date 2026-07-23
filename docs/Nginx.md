# Nginx Web Server Configuration

## Overview

Nginx is a high-performance web server and reverse proxy widely used to serve web applications, static content, and APIs. It is commonly used in Cloud, DevOps, and Site Reliability Engineering (SRE) environments due to its speed, scalability, and reliability.

In this project, Nginx was installed and configured to host a simple static website and demonstrate basic web server administration.

---

## Objectives

The Nginx configuration was implemented to:

- Install and configure a web server
- Host a static website
- Understand Virtual Host configuration
- Validate web server functionality
- Practice Linux service management

---

## Installation

Update package lists:

```bash
sudo apt update
```

Install Nginx:

```bash
sudo apt install nginx
```

---

## Verify Installation

Check service status:

```bash
sudo systemctl status nginx
```

Expected result:

- Service is active (running)
- Enabled to start automatically on boot

---

## Virtual Host Configuration

A custom Virtual Host was created to host a static website.

Configuration file:

```text
/etc/nginx/sites-available/company-site
```

The site was enabled by creating a symbolic link:

```bash
sudo ln -s /etc/nginx/sites-available/company-site \
/etc/nginx/sites-enabled/company-site
```

---

## Test Configuration

Before restarting Nginx, validate the configuration:

```bash
sudo nginx -t
```

Expected output:

```text
syntax is ok
test is successful
```

---

## Restart Nginx

```bash
sudo systemctl restart nginx
```

---

## Verify Web Server

Test locally using:

```bash
curl localhost
```

The configured HTML page should be returned.

You can also verify using a web browser by navigating to:

```text
http://localhost
```

---

## Useful Commands

Start Nginx:

```bash
sudo systemctl start nginx
```

Stop Nginx:

```bash
sudo systemctl stop nginx
```

Restart Nginx:

```bash
sudo systemctl restart nginx
```

Reload configuration:

```bash
sudo systemctl reload nginx
```

View service status:

```bash
sudo systemctl status nginx
```

---

## Security Best Practices

- Validate configuration before restarting
- Restrict unnecessary ports using UFW
- Keep Nginx updated
- Remove unused Virtual Hosts
- Monitor access and error logs

---

## Common Log Files

Access Log:

```text
/var/log/nginx/access.log
```

Error Log:

```text
/var/log/nginx/error.log
```

---

## Troubleshooting

| Problem | Solution |
|----------|----------|
| Nginx service not starting | Check `systemctl status nginx` |
| Configuration errors | Run `sudo nginx -t` |
| Website not loading | Verify Virtual Host configuration |
| Port 80 already in use | Check running services using `ss -tuln` |
| Permission denied | Verify ownership and permissions of website files |

---

## Interview Questions

### What is Nginx?

Nginx is a high-performance web server, reverse proxy, and load balancer.

---

### What is a Virtual Host?

A Virtual Host allows a single Nginx server to host multiple websites using separate configuration files.

---

### Why run `nginx -t`?

It validates the configuration before restarting the service, helping prevent downtime caused by configuration errors.

---

### What is the difference between `restart` and `reload`?

- **restart** stops and starts the service.
- **reload** applies configuration changes without fully stopping the service.

---

## Key Takeaways

Through this project, I gained hands-on experience with:

- Installing and configuring Nginx
- Creating Virtual Host configurations
- Validating configurations
- Managing Linux services
- Troubleshooting web server issues
- Hosting a static website
