#!/bin/bash

URXVT_DIR=/usr/lib/urxvt/perl/

function die () {
    echo "${@}"
    exit 1
}

cat <<EOF

-----------------------------
 Installing urxvt and configs
-----------------------------

EOF

mv .Xresources $HOME || die "error moving .Xresources"
# install clipboard
sudo mv clipboard $URXVT_DIR || die "couldn't install clipboard"