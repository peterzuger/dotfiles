#!/usr/bin/env bash

# initialized with:
# sudo borg init --encryption=keyfile --remote-path=borg-1.4 ssh://<user>@<user>.your-storagebox.de:23/~/backup/home
# sudo borg init --encryption=keyfile --remote-path=borg-1.4 ssh://<user>@<user>.your-storagebox.de:23/~/backup/downloads
# sudo borg init --encryption=keyfile --remote-path=borg-1.4 ssh://<user>@<user>.your-storagebox.de:23/~/backup/system

# backup the keyfiles !!!
# sudo cp /root/.config/borg/keys/<user>_your_storagebox_de__backup_home
# sudo cp /root/.config/borg/keys/<user>_your_storagebox_de__backup_downloads
# sudo cp /root/.config/borg/keys/<user>_your_storagebox_de__backup_system

BACKUP_SERVER_URI="<user>.your-storagebox.de"
BACKUP_SERVER_USER="<user>"
BACKUP_SERVER_PORT="23"
BACKUP_SERVER="ssh://$BACKUP_SERVER_USER@$BACKUP_SERVER_URI:$BACKUP_SERVER_PORT"

USER_REPO="$BACKUP_SERVER/~/backup/home"
USER_DOWNLOADS_REPO="$BACKUP_SERVER/~/backup/downloads"
SYSTEM_REPO="$BACKUP_SERVER/~/backup/system"

export USER_REPO
export USER_DOWNLOADS_REPO
export SYSTEM_REPO

# create an ssh-key for root
# sudo ssh-keygen -t ed25519 -C "multivac borg-backup" -f /root/.ssh/id_stobo
# add the identity to the root ssh config
# echo "Host <user>.your-storagebox.de\r\n    IdentityFile ~/.ssh/id_stobo" |  sudo tee --append /root/.ssh/config
# sudo cat /root/.ssh/id_stobo.pub | ssh -p23 <user>@<user>.your-storagebox.de install-ssh-key
