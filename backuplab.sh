#!/usr/bin/env bash
src="$HOME/devops/day1"
dest="$HOME/backups"
mkdir -p "$dest"

timestamp=$(date +"%Y%m%d_%H%M%S")
backup_file="$dest/backup_$timestamp.tar.gz"

tar -czf "$backup_file" "$src"
echo "Backup completed: $backup_file"

