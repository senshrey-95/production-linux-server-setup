#!/bin/bash

SOURCE="/opt/company-app"

DEST="/opt/backups"

TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")

mkdir -p "$DEST"

tar -czf "$DEST/company-$TIMESTAMP.tar.gz" "$SOURCE"

find "$DEST" -type f -name "*.tar.gz" -mtime +7 -delete

echo "Backup completed successfully at $(date)"
