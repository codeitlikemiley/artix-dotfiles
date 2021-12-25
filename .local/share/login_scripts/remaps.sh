#!/usr/bin/env sh
xset r rate 300 50
#xcape -e 'Hyper_L=Escape'
[[ -f ~/.xmodmap ]] && xmodmap ~/.xmodmap
sxhkd &
fusuma &
