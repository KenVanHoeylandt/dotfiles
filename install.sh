# Dotfiles location
echo DOTFILES=`pwd` > ~/.dotfiles

function install() {
    echo Installing "$1" ...
    cd $1
    ./install.sh
    cd ..
}

# Install
install bash
install git
[ $(uname -s) = "Darwin" ] && install mac
install zsh
install vim
install bat

