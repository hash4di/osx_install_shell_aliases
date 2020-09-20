function install_janus() {
  curl -L https://bit.ly/janus-bootstrap | bash || return $?
  git clone git@github.com:hash4di/dotjanus.git $HOME/.janus || return $?
  echo 'source ~/.janus/vimrc.after' > $HOME/.vimrc.after || return $?
}
