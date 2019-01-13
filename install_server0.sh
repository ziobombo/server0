#! /bin/bash

ansible-galaxy --force install nginxinc.nginx
ansible-galaxy --force install geerlingguy.certbot
ansible-galaxy --force install SphericalElephant.shorewall

ansible-playbook -i servers.ini server0.yml --ask-vault-pass
