#!/bin/bash

#installs favorite applications
sudo apt install kitty neovim zsh ranger anki chromium-browser autokey

#changes to zsh
chsh -s /bin/zsh

#copies configuration files
cp -v .zshrc ~/.zshrc
cp -v .xinitrc  ~/.xinitrc
cp -v .Xresources  ~/.Xresources
cp -v .Xmodmap  ~/.Xmodmap
cp -v .zshrc ~/.zshrc
cp -v .config/ranger/rc.conf ~/.config/ranger/rc.conf
cp -v .config/kitty/kitty.conf ~/.config/kitty/kitty.conf
