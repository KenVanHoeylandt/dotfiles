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
  virtualbox
  yed
)
brew cask install "${apps[@]}"