" MySys can be linux, mac, or windows
fun! MySys()
   return "linux"
endfun
set runtimepath=~/dotfiles/vim-local,~/dotfiles/vim-local/after,\$VIMRUNTIME
source ~/dotfiles/vim-local/vimrc
helptags ~/dotfiles/vim-local/doc
