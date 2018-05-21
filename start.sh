#!/bin/bash

sudo apt-get update && sudo apt-get install -y salt-minion git
git clone https://github.com/matilinux/saltmodule.git
sudo mv saltmodule/salt/ /srv/
sudo salt-call --local state.highstate
