dotfiles
========

my personal dot files

Vim
========
YCM need [Building Vim from source](https://github.com/Valloric/YouCompleteMe/wiki/Building-Vim-from-source)

[UltiSnips](https://github.com/sirver/UltiSnips) need vim to support multibyte

configure:


    ./configure --with-features=huge \
                --enable-rubyinterp \
                --enable-pythoninterp \
                --enable-perlinterp \
                --enable-gui=gtk2 \
                --enable-cscope \
                --enable-multibyte \
                --prefix=/usr 

