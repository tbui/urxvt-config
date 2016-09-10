#!/bin/bash

URXVT_DIR=/usr/lib/urxvt/perl/
FILES=("Xresources" "clipboard")

function die () {
    echo "${@}"
    exit 1
}

cat <<EOF

-----------------------------
 Installing urxvt and configs
-----------------------------

EOF
# MOVE THE FILES
for i in ${FILES[*]}; do
    echo "Downloading $i"; echo
    wget -c https://github.com/tbui/urxvt-config/raw/master/$i \
      || die "Fail to download ${i}"
done

mv Xresources $HOME/.Xresources || die "error moving .Xresources"
# install clipboard
sudo mv clipboard $URXVT_DIR || die "couldn't install clipboard"