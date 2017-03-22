#!/bin/bash

D_R=`cd \`dirname $0\` ; pwd -P`

function echorun() {
  echo "$@"
  $@ || return $?
}

for COMMAND in \
  dock_autohide_on \
  dock_restart \
  menubar_autohide_on \
  ui_server_restart \

do
  source $D_R/shell_aliases.d/$COMMAND.sh || return $?
  echorun $COMMAND
done
