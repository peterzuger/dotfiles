#!/usr/bin/env bash
set -u

# unit name (equals backup server config)
UNIT_NAME="$1"

# create encrypted password file with:
# systemd-ask-password -n | sudo systemd-creds encrypt --name=borg-pass-$UNIT_NAME - /usr/lib/credstore/borg-pass-$UNIT_NAME
#
# get password from systemd-creds /usr/lib/credstore/borg-pass
export BORG_PASSCOMMAND="cat $CREDENTIALS_DIRECTORY/borg-pass-$UNIT_NAME"

# No one can answer if Borg asks these questions, it is better to just fail quickly
# instead of hanging.
export BORG_RELOCATED_REPO_ACCESS_IS_OK=no
export BORG_UNKNOWN_UNENCRYPTED_REPO_ACCESS_IS_OK=no

# Log Borg version
borg --version

# backup-create --patterns-from=patterns.lst REPO::ARCHIVE ROOT_DIRS
backup-create() {
    borg create \
         --stats \
         --show-rc \
         --one-file-system \
         --compression zlib,6 \
         --remote-path=borg-1.4 \
         --exclude-caches \
         --exclude-if-present=".nobackup" \
         "$@"
}

backup-user() {
    local user_name=$(basename "$1")
    local home_dir="$1"
    local downloads_dir="$1/Downloads"

    echo "Starting backup for $user_name."

    # backup HOME excluding downloads
    backup-create \
        --patterns-from=/etc/borg-backup/home-patterns.lst \
        --exclude "home/*/Downloads" \
        "$USER_REPO::{hostname}-$user_name-{now}" \
        "$home_dir"

    # backup downloads
    if [[ -d "$downloads_dir" ]]; then
        echo "Starting downloads backup for $user_name."

        backup-create \
            --patterns-from=/etc/borg-backup/home-patterns.lst \
            "$USER_DOWNLOADS_REPO::{hostname}-$user_name-{now}" \
            "$downloads_dir"
    fi

    echo "Backup for $user_name done."
}

backup-system() {
    echo "Starting system backup."

    # backup / excluding /home and runtime files
    backup-create \
        --patterns-from=/etc/borg-backup/system-patterns.lst \
        "$SYSTEM_REPO::{hostname}-{user}-{now}" \
        /

    echo "Backup for system done."
}

echo "Loading config from $UNIT_NAME"
source "/etc/borg-backup/$UNIT_NAME.sh"


# iterate over all user home directories
shopt -s extglob
for home_directory in /home/!(lost\+found)/ ; do
    echo "$home_directory"

    backup-user "$home_directory"
done
shopt -u extglob

# finish with the system backup
backup-system
