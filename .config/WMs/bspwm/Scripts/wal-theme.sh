#!/usr/bin/env sh


if ! command -v rofi &> /dev/null
   then
       MENU="dmenu"
       else
           MENU="rofi -dmenu"
    fi

declare -a THEMES=(
3024
base16-apathy
base16-atelier-estuary
base16-atelier-sulphurpool
base16-black-metal-burzum
base16-black-metal-funeral
base16-dracula
base16-nord
base16-gruvbox-hard
base16-icy
base16-greenscreen
base16-monokai
base16-harmonic
base16-hopscotch
base16-solarized
sexy-astromouse
sexy-neon
)


choice=$(printf "%s\n" "${THEMES[@]}" | $MENU -i -p 'Wal Theme: ')

wal -q --theme $choice
