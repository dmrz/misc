#!/usr/bin/env bash

apt-get install -y python3-pip git-core zsh

su - vagrant -c "git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh"
su - vagrant -c "curl -O https://raw.githubusercontent.com/dmrz/misc/master/vagrant/.zshrc"
su - vagrant -c "pip3 install virtualenvwrapper"

chsh -s `which zsh` vagrant

apt-get install -y python3.5-dev postgresql-9.4 libpq-dev

su - postgres -c "createuser -dRS vagrant"
su - postgres -c "psql -c \"ALTER USER test WITH ENCRYPTED PASSWORD 'test';\""
