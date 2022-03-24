#!/bin/bash
sudo apt update -y
sudo apt install virtualbox && vagrant && nvim && software-properties-common -y
rm -rf ~/.config/nvim/init.vim
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt install -y \
    ansible \
    ca-certificates \
    curl \
    gnupg \
    lsb-release
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/nullgit clone https://github.com/LunarVim/Neovim-from-scratch.git ~/.config/nvim
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io -y
