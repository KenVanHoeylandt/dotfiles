.PHONY: dotfiles osx install

default: dotfiles osx install

dotfiles:
	ln -sfv "dotfiles/git/gitconfig" ~/.gitconfig
	ln -sfv "dotfiles/git/gitignore_global" ~/.gitignore_global
	ln -sfv "dotfiles/bash/bash_aliases" ~/.bash_aliases
	ln -sfv "dotfiles/bash/bash_functions" ~/.bash_functions
	ln -sfv "dotfiles/bash/bash_profile" ~/.bash_profile
	ln -sfv "dotfiles/bash/bash_profile_osx" ~/.bash_profile_osx
	ln -sfv "dotfiles/bash/bash_ps1" ~/.bash_ps1
	ln -sfv "dotfiles/bash/bashrc" ~/.bashrc
	ln -sfv "dotfiles/slate/slate.js" ~/.slate.js

	ln -sfv $(HOME)/dotfiles/sublime/Preferences.sublime-settings $(HOME)/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Preferences.sublime-settings

osx:
	./osx/defaults.sh
	./osx/timemachine.sh

install:
	./install/brew.sh
	./install/brew-cask.sh

vagrantplugins:
	./install/vagrantplugins.sh