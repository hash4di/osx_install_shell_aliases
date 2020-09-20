function install_hammerspoon() {
  if [ ! -d $HOME/.hammerspoon ]; then
    git clone git@github.com:hash4di/dothammerspoon.git $HOME/.hammerspoon || return $?
  else
    cd "$HOME/.hammerspoon" && git pull --rebase || return $?
  fi
  cd "$HOME/.hammerspoon" && git submodule update --init --recursive || return $?
  brew cask install hammerspoon || return $?
  macos_autostart_app Hammerspoon 1
  open /Applications/Hammerspoon.app || return $?
}
