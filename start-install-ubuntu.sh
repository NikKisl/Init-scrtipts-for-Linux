#!/bin/bash
sudo apt update -y
sudo apt install virtualbox && vagrant && neovim && software-properties-common && git && curl && fuse && libfuse2 && wget && git && python3-pip && ack-grep -y
rm -rf ~/.config/nvim/init.vim
cd ~
wget --quiet https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage --output-document nvim
sudo chmod +x nvim
sudo chown root:root nvim
sudo mv nvim /usr/bin
cd ~
mkdir -p .config/nvim
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
git clone https://github.com/LunarVim/Neovim-from-scratch.git ~/.config/nvim
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

