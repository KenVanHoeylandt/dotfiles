# Apps to be installed by homebrew.
apps=(
  git
  jq
  tree
  ansible
)
brew install "${apps[@]}"

# Git comes with diff-highlight, but isn't in the PATH
ln -sf "$(brew --prefix)/share/git-core/contrib/diff-highlight/diff-highlight" /usr/local/bin/diff-highlight

# Apps to be installed by homebrew cask.
apps=(
  iterm2
)

brew cask install "${apps[@]}"
