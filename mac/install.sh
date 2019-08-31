CURDIR=`pwd`

# Preferences
cp preferences/com.googlecode.iterm2.plist ~/Library/Preferences/

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

# Shortcuts
if [ ! -a /usr/local/bin ]; then sudo mkdir -p /usr/local/bin; fi;
if [ ! -a /usr/local/bin/subl ]; then sudo ln -sfv "/Applications/Sublime Text.app/Contents/SharedSup→
ln -sfv "${CURDIR}/preferences/sublime/Preferences.sublime-settings" "${HOME}/Library/Application→

