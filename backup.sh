#!/bin/bash
# backup.sh - Simple Linux backup script
# Usage: ./backup.sh /path/to/source /path/to/backup

SOURCE=$1
DEST=$2
DATE=$(date +%Y-%m-%d_%H-%M-%S)

if [ -z "$SOURCE" ] || [ -z "$DEST" ]; then
    echo "Usage: $0 <source_directory> <backup_directory>"
    exit 1
fi

# Create backup directory if not exists
mkdir -p "$DEST"

# Create a tar.gz backup
tar -czf "$DEST/backup_$DATE.tar.gz" -C "$SOURCE" .

echo "Backup completed: $DEST/backup_$DATE.tar.gz"

