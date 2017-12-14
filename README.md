# Ansible

## preparation
### server side
```
wget -O ~/.ssh/authorized_keys https://raw.githubusercontent.com/atsttk84/ansible/master/tempkey/id_ed25519.pub
chmod 600 ~/.ssh/authorized_keys
sed -i 's/^#PubkeyAuthentication yes/PubkeyAuthentication yes/g' /etc/ssh/sshd_config 
```

### client side
```
wget -O ~/.ssh/ansiblekey https://raw.githubusercontent.com/atsttk84/ansible/master/tempkey/id_ed25519
chmod 600 ~/.ssh/ansiblekey
```

### confirm
```
$ ansible -i hosts target -m ping
192.168.1.1 | SUCCESS => {
    "changed": false, 
    "failed": false, 
    "ping": "pong"
}
```
## reference
* http://docs.ansible.com/ansible/latest/index.html
* http://docs.ansible.com/ansible-container/index.html
* https://ansible-tips-and-tricks.readthedocs.io/en/latest/
* https://github.com/ansible/ansible-examples
* https://github.com/enginyoyen/ansible-best-practises
* https://coderwall.com/t/ansible/popular
