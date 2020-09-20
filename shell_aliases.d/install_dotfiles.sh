function install_dotfiles() {
  if [ ! -d $HOME/projects/dotfiles ]; then
    git clone git@github.com:hash4di/dotfiles.git $HOME/projects/dotfiles || return $?
  else
    cd $HOME/projects/dotfiles || return $?
    git pull || return $?
  fi
  cd $HOME/projects/dotfiles || return $?
  sh setup.sh || return $?
}
