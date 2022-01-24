#!/bin/bash
pkg update && pkg upgrade -y
pkg install php screen openssh wget -y
echo y|ssh-keygen -t ed25519 -f ~/.ssh/t-wstp -N ""
./start
