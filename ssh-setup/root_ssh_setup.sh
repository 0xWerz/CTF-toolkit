mkdir /root/.ssh
chmod 600 /root/.ssh
curl $IP/id_rsa.pub >> /root/.ssh/authorized_keys
chmod 600 /root/.ssh/authorized_keys
