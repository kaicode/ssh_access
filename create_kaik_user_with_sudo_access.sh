#!/usr/bin/env bash

MY_SHELL=$( which bash )

/usr/sbin/useradd -c 'Kai Kewley <kaikewley at gmail.com>' -s ${MY_SHELL} -m kaik
cat >/etc/sudoers.d/kaik-ALL <<EOF
kaik     ALL=(ALL:ALL) NOPASSWD: ALL
EOF
chmod 0440 /etc/sudoers.d/kaik-ALL
mkdir ~kaik/.ssh
chmod 700 ~kaik/.ssh
curl https://raw.githubusercontent.com/kaicode/ssh_access/master/kaikewley_rsa.pub >~kaik/.ssh/authorized_keys
chmod 400 ~kaik/.ssh/authorized_keys
chown -R kaik ~kaik/.ssh