#!/bin/bash

if [ -x "$(command -v paru)"]; then
  paru -Syu --noconfirm polybar feh picom dunst leftwm leftwm-theme-git
fi

if [ -x "$(command -v yay)"]; then
  yay -Syu --noconfirm polybar feh picom dunst leftwm leftwm-theme-git
fi

git clone https://github.com/rafael-arreola/leftwm-theme.git ~/.config/leftwm/themes/develop

leftwm-theme apply develop