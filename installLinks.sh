#!/bin/bash

DIRBKP=~/.dotfiles-bkp-$(date +%Y%m%d.%H%M)

mkdir $DIRBKP

cp ~/.bashrc $DIRBKP
cp ~/.viper $DIRBKP
cp ~/.emacs $DIRBKP
cp ~/.tmux.conf $DIRBKP
cp ~/.vimrc $DIRBKP
cp ~/.screenrc $DIRBKP

rm -f ~/.bashrc
rm -f ~/.viper
rm -f ~/.emacs
rm -f ~/.tmux.conf 
rm -f ~/.vimrc
rm -f ~/.screenrc 

ln -s ~/dotfiles/bashrc ~/.bashrc
ln -s ~/dotfiles/vimrc ~/.vimrc
ln -s ~/dotfiles/emacs ~/.emacs
ln -s ~/dotfiles/viper ~/.viper
ln -s ~/dotfiles/tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/screenrc ~/.screenrc
