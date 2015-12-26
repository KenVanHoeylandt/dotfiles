# Install homebrew.
if [ ! -x "$(which vagrant)" ]; then
  echo "run make install first"
  exit 1
fi

plugins=(
  vagrant-hostmanager
  vagrant-vbguest
  vagrant-cachier
)

vagrant plugin install "${plugins[@]}"