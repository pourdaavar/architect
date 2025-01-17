#!/bin/bash
. "$(dirname "$BASH_SOURCE")/../utils.sh"

desktop=(
  alacritty
  bat
  browserpass
  browserpass-chromium
  copyq
  curlie
  emojify
  exa
  feh
  ffmpegthumbnailer
  flameshot
  flashfocus-git
  mpv
  pass
  pass-git-helper
  redshift
  viewnior
)

title "Installing desktop apps..."

for pkg in "${desktop[@]}"; do
  pkg_name=$(echo "$pkg" | awk '{print $1}')
  progress "Installing $pkg_name"
  paru -Sq "$pkg" --noconfirm > /dev/null
done
