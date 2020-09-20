function install_postman() {
  brew cask install postman || return $?
  open /Applications/Postman.app || return $?
}
