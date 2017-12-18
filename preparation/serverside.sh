#!/bin/sh -e

wget -O ~/.ssh/authorized_keys https://raw.githubusercontent.com/atsttk84/ansible/master/tempkey/id_ed25519.pub
chmod 600 ~/.ssh/authorized_keys
sed -i 's/^#PubkeyAuthentication yes/PubkeyAuthentication yes/g' /etc/ssh/sshd_config
