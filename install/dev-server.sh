# Apps to be installed by homebrew.
apps=(
  ansible
)

brew install "${apps[@]}"

# Apps to be installed by homebrew cask.
apps=(
  vagrant
  vagrant-manager
  virtualbox
)

brew cask install "${apps[@]}"

# Vagrant plugins
plugins=(
  vagrant-hostmanager
  vagrant-vbguest
  vagrant-cachier
)

vagrant plugin install "${plugins[@]}"
