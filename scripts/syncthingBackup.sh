#!/bin/sh

# Variables
MOUNT_POINT=/mnt/SG4TB1
RSYNC_HOST=user@server
RSYNC_REMOTE_DIR=/mnt/SG4TB1/Backups/Syncthing
SSH_PORT=XXXXX

# Navigate to Syncthing data directory
echo "======================================"
echo "Backing up important Syncthing directories"
cd $MOUNT_POINT/Syncthing

SYNCTHING_FILE_NAME=$(date +"%d-%m-%Y-%T")-syncthing_backup
echo $SYNCTHING_FILE_NAME

# Compress the folder into a tarball
echo "Compressing"
tar czf $MOUNT_POINT/$SYNCTHING_FILE_NAME.tar.gz *

# Encrypt with GPG key
echo "Encrypting"
gpg -o $MOUNT_POINT/$SYNCTHING_FILE_NAME.tar.gz.gpg -e -r jackcoble@tutanota.com $MOUNT_POINT/$SYNCTHING_FILE_NAME.tar.gz

# Rsync to server
echo "Uploading to $RSYNC_HOST"
rsync -avz -e "ssh -p $SSH_PORT" $MOUNT_POINT/$SYNCTHING_FILE_NAME.tar.gz.gpg $RSYNC_HOST:$RSYNC_REMOTE_DIR

# Shred the backup tarball (both unencrypted and encrypted version)
echo "Cleaning up..."
shred -u $MOUNT_POINT/$SYNCTHING_FILE_NAME.tar.gz $MOUNT_POINT/$SYNCTHING_FILE_NAME.tar.gz.gpg