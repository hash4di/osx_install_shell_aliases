function install_zsh() {
  brew install zsh || return $?
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" || return $?
  echo /usr/local/bin/zsh | sudo tee -a /etc/shells || return $?
  chsh -s /usr/local/bin/zsh || return $?
  if [ ! -d "$HOME/.oh-my-zsh/custom/pr0d1r2" ]; then
    git clone git@github.com:pr0d1r2/oh-my-zsh-custom.git "$HOME/.oh-my-zsh/custom/pr0d1r2" || return $?
  else
    cd  "$HOME/.oh-my-zsh/custom/pr0d1r2" || return $?
    git pull || return $?
  fi
}
