#!/bin/sh -e

wget -O ~/.ssh/ansiblekey https://raw.githubusercontent.com/atsttk84/ansible/master/tempkey/id_ed25519
chmod 600 ~/.ssh/ansiblekey
