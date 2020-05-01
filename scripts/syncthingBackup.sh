#!/bin/sh

# Variables
MOUNT_POINT=/mnt/SG4TB1
ENDPOINT=https://S3_INSTANCE_URL
S3_FOLDER=syncthing-backup

# Stop the Syncthing server to avoid any potential issues with corruption
systemctl stop pi@syncthing.service

# Navigate to Syncthing data directory
echo "======================================"
echo "Backing up important Syncthing directories"
cd $MOUNT_POINT/Syncthing

SYNCTHING_FILE_NAME=$(date +"%d_%m_%Y")_syncthing_backup
echo $SYNCTHING_FILE_NAME

# Compress the folder into a tarball
echo "Compressing"
tar czf $MOUNT_POINT/$SYNCTHING_FILE_NAME.tar.gz *

# Encrypt with GPG key
echo "Encrypting"
gpg -o $MOUNT_POINT/$SYNCTHING_FILE_NAME.tar.gz.gpg -e -r jackcoble@tutanota.com $MOUNT_POINT/$SYNCTHING_FILE_NAME.tar.gz

# Upload to S3 server
echo "Uploading to $ENDPOINT"
aws s3 cp $MOUNT_POINT/$SYNCTHING_FILE_NAME.tar.gz.gpg s3://$S3_FOLDER/$SYNCTHING_FILE_NAME.tar.gz.gpg --endpoint-url=$ENDPOINT

# Shred the backup tarball (both unencrypted and encrypted version)
# Restart the Syncthing server
echo "Cleaning up..."
shred -u $MOUNT_POINT/$SYNCTHING_FILE_NAME.tar.gz $MOUNT_POINT/$SYNCTHING_FILE_NAME.tar.gz.gpg
systemctl start pi@syncthing.service