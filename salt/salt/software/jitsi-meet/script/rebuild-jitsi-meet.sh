#!/usr/bin/env bash

# Simple script to ensure a current build of Jitsi Meet.

cd /var/www/html/jitsi-meet
curl https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
nvm install 6
nvm use 6
npm install && make compile && make deploy && make clean
