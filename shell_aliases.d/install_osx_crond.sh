function install_osx_crond() {
  test -d "$HOME/projects/osx_crond" || git clone git@github.com:hash4di/osx_crond.git "$HOME/projects/osx_crond" || return $?
  cd "$HOME/projects/osx_crond" || return $?
  sh setup.sh || return $?
}
