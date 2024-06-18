#!/bin/bash

# Directory to backup
SOURCE_DIR="/path/to/source"

# Backup destination
DEST_DIR="/path/to/destination/$(date +%Y-%m-%d)"

# Create backup directory
mkdir -p $DEST_DIR

# Copy files
rsync -av --delete $SOURCE_DIR $DEST_DIR
# The --delete flag in the rsync command is used to delete files in the destination directory that are not present in the source directory. This ensures that the destination directory is an exact mirror of the source directory. Here's a detailed explanation of what happens with the --delete flag

# Log the backup
echo "Backup completed on $(date)" >> /var/log/backup.log