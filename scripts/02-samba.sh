#!/usr/bin/env sh

# set samba password for the Docker user
echo "DOCKER_PASSWORD" "DOCKER_PASSWORD" | smbpasswd -sa DOCKER_USER
sed -i "s/^valid users\s*=\s*\${DOCKER_USER}/valid users = ${DOCKER_USER}/g" /etc/samba/smb.conf
