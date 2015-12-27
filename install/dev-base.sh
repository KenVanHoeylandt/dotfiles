# Apps to be installed by homebrew cask.
apps=(
  sourcetree
  caskroom/versions/sublime-text3
  yed
)

brew cask install "${apps[@]}"

mkdir -p ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/
ln -sfv ~/dotfiles/preferences/sublime/Preferences.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Preferences.sublime-settings