function open_photos_to_sync() {
  open /System/Applications/Photos.app/ || return $?
}
