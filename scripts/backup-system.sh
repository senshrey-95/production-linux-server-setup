#!/bin/bash

BACKUP_DIR="/opt/backups"

DATE=$(date +%F-%H-%M)

mkdir -p $BACKUP_DIR

tar -czf $BACKUP_DIR/company-$DATE.tar.gz /opt/company-app

echo "Backup completed at $(date)"
