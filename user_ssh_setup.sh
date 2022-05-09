mkdir ~/.ssh
chmod 600 ~/.ssh
curl $IP/id_rsa.pub >> ~/.ssh/authorized_keys
chmod 600 ~/.ssh/authorized_keys
