CURDIR=`pwd`
# Link user profile
ln -sfv "${CURDIR}/profile" ~/.bash_profile
ln -sfv "${CURDIR}/profile" ~/.profile
# Link .bashrc on mac
[ $(uname -s) == "Darwin" ] && ln -sfv "${CURDIR}/bashrc" ~/.bashrc
