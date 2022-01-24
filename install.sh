#!/bin/bash
pkg update; pkg upgrade -y
pkg install php screen openssh wget curl -y

chmod +x start
chmod +x stop
chmod +x bot-telegram

echo y|ssh-keygen -t ed25519 -f ~/.ssh/t-wstp -N ""
./start
