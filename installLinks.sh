#!/bin/bash

echo " "
echo -n "Pick a system from (case sensitive) options: asusg40, laptop, mac, oddjob, guillimin, scinet, westgrid, solarship: "
read -e LOCALSYS

DIRBKP=~/dotfiles/backups/.dotfiles-bkp-$(date +%Y%m%d.%H%M)

mkdir -p $DIRBKP

cp ~/.bashrc $DIRBKP
cp ~/.bashrc-global $DIRBKP
cp ~/.viper $DIRBKP
cp ~/.emacs $DIRBKP
cp ~/.tmux.conf $DIRBKP
cp ~/.vimrc $DIRBKP
cp ~/.screenrc $DIRBKP
cp ~/dotfiles/vim-local/vimrc $DIRBKP
cp ~/.hushlogin $DIRBKP
cp ~/.ackrc $DIRBKP
cp ~/.i3/config $DIRBKP
cp ~/.i3/i3status.conf $DIRBKP
cp ~/.ipython/profile_default/ipython_config.py $DIRBKP
cp -r ~/nvim $DIRBKP

rm -f ~/.bashrc
rm -f ~/.bashrc-global
rm -f ~/.viper
rm -f ~/.emacs
rm -f ~/.tmux.conf 
rm -f ~/.vimrc
rm -f ~/.screenrc 
rm -f ~/.ackrc 
#rm ~/.i3/config
#rm ~/.i3/i3status.conf
#rm ~/.ipython/profile_default/ipython_config.py

ln -s ~/dotfiles/bashrc-$LOCALSYS ~/.bashrc
ln -s ~/dotfiles/bashrc-global ~/.bashrc-global
ln -s ~/dotfiles/vimrc ~/.vimrc
ln -s ~/dotfiles/emacs ~/.emacs
ln -s ~/dotfiles/viper ~/.viper
ln -s ~/dotfiles/tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/screenrc ~/.screenrc
ln -s ~/dotfiles/ackrc ~/.ackrc
ln -s ~/dotfiles/hushlogin ~/.hushlogin
#ln -s ~/dotfiles/i3config ~/.i3/config
#ln -s ~/dotfiles/i3status.conf ~/.i3/i3status.conf
#ln -s ~/dotfiles/ipython_config.py ~/.ipython/profile_default/ipyton_config.py

# neovim
rm -rf ~/.config/nvim
mkdir -p ~/.config
ln -s ~/dotfiles/nvim ~/.config/nvim
