function install_font_microsoft() {
  brew tap hash4di/fonts-nonfree || return $?
  brew cask install font-microsoft-office || return $?
}
