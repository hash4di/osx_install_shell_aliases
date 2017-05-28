function install_hammerspoon() {
  if [ ! -d $HOME/.hammerspoon ]; then
    git clone git@github.com:pr0d1r2/dothammerspoon.git $HOME/.hammerspoon || return $?
  else
    cd $HOME/.hammerspoon || return $?
    git pull || return $?
  fi
  brew cask install hammerspoon || return $?
  open /Applications/Hammerspoon.app || return $?
}