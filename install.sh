#!/bin/bash

if [ -x "$(command -v paru)" ]; then
  paru -Syu --noconfirm flameshot rofi alacritty polybar feh picom dunst leftwm leftwm-theme-git leftwm-config-git ttf-fira-code ttf-cascadia-code ttf-iosevka-nerd ttc-iosevka ttf-font-awesome
fi

if [ -x "$(command -v yay)" ]; then
  yay -Syu --noconfirm flameshot rofi alacritty polybar feh picom dunst leftwm leftwm-theme-git leftwm-config-git ttf-fira-code ttf-cascadia-code ttf-iosevka-nerd ttc-iosevka ttf-font-awesome
fi

git clone https://github.com/rafael-arreola/leftwm-theme.git ~/.config/leftwm/themes/develop

leftwm-theme apply develop
