.PHONY: help

default: help

help:
	@echo Usage: make [target]
	@echo
	@echo Targets:
	@echo "\tdotfiles - link dotfiles"
	@echo "\tosx - apply OS X settings"
	@echo "\tinstall - everything"
	@echo "\tinstall-no-server - everything except server packages"
	@echo

dotfiles:
	curl -o ~/.git-prompt.sh https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh
	ln -sfv "dotfiles/git/gitconfig" ~/.gitconfig
	ln -sfv "dotfiles/git/gitignore_global" ~/.gitignore_global
	ln -sfv "dotfiles/bash/bash_aliases" ~/.bash_aliases
	ln -sfv "dotfiles/bash/bash_functions" ~/.bash_functions
	ln -sfv "dotfiles/bash/bash_profile" ~/.bash_profile
	ln -sfv "dotfiles/bash/bash_profile_osx" ~/.bash_profile_osx
	ln -sfv "dotfiles/bash/bash_ps1" ~/.bash_ps1
	ln -sfv "dotfiles/bash/bashrc" ~/.bashrc
	ln -sfv "dotfiles/slate/slate.js" ~/.slate.js

osx:
	./osx/defaults.sh
	./osx/timemachine.sh

install: install-no-server install-dev-server

install-no-server: dotfiles osx install-base install-terminal install-desktop install-dev-base

install-base:
		./install/brew.sh

install-terminal:
	./install/terminal.sh

install-desktop:
	./install/desktop.sh

install-dev-base:
	./install/dev-base.sh

install-dev-server:
	./install/dev-server.sh
