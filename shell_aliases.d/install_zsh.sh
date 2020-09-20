function install_zsh() {
  brew install zsh || return $?
  test -d "$HOME/.oh-my-zsh" || sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" || return $?
  echo /usr/local/bin/zsh | sudo tee -a /etc/shells || return $?
  chsh -s /usr/local/bin/zsh || return $?
  if [ ! -d "$HOME/.oh-my-zsh/custom/hash4di" ]; then
    git clone git@github.com:hash4di/oh-my-zsh-custom.git "$HOME/.oh-my-zsh/custom/hash4di" || return $?
  else
    cd  "$HOME/.oh-my-zsh/custom/hash4di" || return $?
    git pull || return $?
  fi
  chmod -R go-rwxs "$HOME/.oh-my-zsh/custom/hash4di" || return $?
  ln -s "$HOME/.oh-my-zsh/custom/hash4di/zshrc.zsh"  "$HOME/.oh-my-zsh/custom/hash4di.zsh" || return $?
  if [ ! -d "$HOME/.oh-my-zsh/spaceship-prompt" ]; then
    git clone https://github.com/denysdovhan/spaceship-prompt.git "$HOME/.oh-my-zsh/themes/spaceship-prompt" || return $?
  else
    cd "$HOME/.oh-my-zsh/themes/spaceship-prompt" || return $?
    git pull || return $?
  fi
  chmod -R go-rwxs "$HOME/.oh-my-zsh/themes/spaceship-prompt" || return $?
}
