function run() {
  echo "$@"
  $@ || return $?
}
