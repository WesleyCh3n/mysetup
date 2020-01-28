#!/bin/bash

#install vim
sudo apt-get install vim -y
sudo apt-get install git -y

#install vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

#Copy vimrc
cp vimrc.conf ~/.vimrc

#install plugins
vim +PlugInstall +qall > /dev/null

echo "set background=dark
let g:gruvbox_material_background = 'medium'
let g:airline_theme = 'gruvbox_material'
let g:gruvbox_material_disable_italic_comment = 1
let g:gruvbox_material_transparent_background = 1
colorscheme gruvbox-material" >> ~/.vimrc
