#!/usr/bin/env sh
# Map an unused modifier's keysym to the spacebar's keycode and make it a
# control modifier. It needs to be an existing key so that emacs won't
# spazz out when you press it. Hyper_L is a good candidate.
xmodmap -e "clear Lock"
spare_modifier="Hyper_L"
xmodmap -e "keycode 66 = $spare_modifier"
xmodmap -e "remove mod4 = $spare_modifier" # hyper_l is mod4 by default
xmodmap -e "add mod3 = $spare_modifier"

# Map space to an unused keycode (to keep it around for xcape to
# use).
xmodmap -e "keycode any = Hyper_L"

# Finally use xcape to cause the space bar to generate a space when tapped.
xcape -e "$spare_modifier=Escape"
xcape -e "Hyper_L=Escape"
xmodmap ~/.xmodmap
