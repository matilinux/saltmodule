#!/bin/bash

sudo apt-get update && sudo apt-get install -y salt-minion
sudo mv saltmodule/salt/ /srv/
sudo salt-call --local state.highstate
