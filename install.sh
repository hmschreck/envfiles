#!/bin/bash
# install git
echo "installing git"
sudo apt install git

# install zsh and oh-my-zsh
sudo apt install zsh
mkdir -p zsh
cd zsh
wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
chmod +x install.sh
./install.sh
cd ..

# link ZSH config
echo "linking zsh config"
ln -sf $PWD/zshrc $HOME/.zshrc

# basic utilities
sudo apt install curl

# install jetbrains toolbox
echo "downloading jetbrains toolbox"
mkdir -p downloads
cd downloads
wget https://raw.githubusercontent.com/nagygergo/jetbrains-toolbox-install/master/jetbrains-toolbox.sh
chmod +x jetbrains-toolbox.sh
./jetbrains-toolbox.sh
cd ..

# install docker
sudo apt install docker

