.PHONY: help

default: help

help:
	@echo Usage: make [target]
	@echo
	@echo Main targets:
	@echo "\tmac\t\tapply everything on macOS"
	@echo
	@echo Intermediate targets:
	@echo "\tbash\t\tlink bash profile"
	@echo "\tgit\t\tlink git profile"
	@echo "\tmacSettings\tapply macOS settings"

bash:
	ln -sfv "${CURDIR}/applications/bash/bash_aliases" ~/.bash_aliases
	ln -sfv "${CURDIR}/applications/bash/bash_functions" ~/.bash_functions
	ln -sfv "${CURDIR}/applications/bash/bash_profile" ~/.bash_profile
	ln -sfv "${CURDIR}/applications/bash/bash_profile_mac" ~/.bash_profile_mac
	ln -sfv "${CURDIR}/applications/bash/bash_ps1" ~/.bash_ps1
	ln -sfv "${CURDIR}/applications/bash/bashrc" ~/.bashrc

git:
	ln -sfv "${CURDIR}/applications/git/git-prompt.sh" ~/.git-prompt.sh
	ln -sfv "${CURDIR}/applications/git/gitconfig" ~/.gitconfig
	ln -sfv "${CURDIR}/applications/git/gitignore_global" ~/.gitignore_global

macSettings:
	# Preferences
	ln -sfv "${CURDIR}/mac/preferences/slate/slate.js" ~/.slate.js
	cp mac/preferences/com.googlecode.iterm2.plist ~/Library/Preferences/
	# Expand save panel by default
	defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
	# Time Machine exclusions
	sudo tmutil addexclusion ~/Downloads
	sudo tmutil addexclusion ~/Library/Application\ Support/Steam/steamapps/
	sudo tmutil addexclusion ~/Movies
	sudo tmutil addexclusion ~/VirtualBox\ VMs
	sudo tmutil addexclusion /opt/homebrew-cask
	sudo tmutil addexclusion /Library/Caches/Homebrew
	sudo tmutil addexclusion /usr/local/Cellar/

macShortcuts:
	if [ ! -a /usr/local/bin ]; then sudo mkdir -p /usr/local/bin; fi;
	if [ ! -a /usr/local/bin/subl ]; then sudo ln -sfv "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/subl; fi;
	ln -sfv "${CURDIR}/mac/preferences/sublime/Preferences.sublime-settings" "${HOME}/Library/Application Support/Sublime Text 3/Packages/User/Preferences.sublime-settings"

mac: macSettings macShortcuts git dotfiles
	# Nothing
