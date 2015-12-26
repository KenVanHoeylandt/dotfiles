# Install cask.
if [ ! -z "$(brew cask --version)" ]; then
  brew install caskroom/cask/brew-cask
fi

  brew tap caskroom/versions

# Apps to be installed by homebrew cask.
apps=(
  istat-menus
  iterm2
  slack
  sourcetree
  caskroom/versions/sublime-text3
  vagrant
  vagrant-manager
  virtualbox
  yed
  evernote
  gimp
  skitch
  skype
  spotify
)
brew cask install "${apps[@]}"