#!/bin/bash

# get the dir of the current script
script_dir="$( cd "$( dirname "$0" )" && pwd )"

if [[ ! -a ~/.vimrc ]]
then
  ln -s $script_dir/vim-config/vimrc ~/.vimrc
fi

if [[ ! -a ~/.vim ]]
then
  ln -s $script_dir/vim-config/vim ~/.vim
fi

