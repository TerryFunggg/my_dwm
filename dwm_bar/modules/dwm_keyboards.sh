#!/bin/sh
dwm_keyboards () {
    printf "%s" "$open_tag"
    printf "%s" "$(setxkbmap -query | awk '/layout/{print $2}')"
    printf "%s\n" "$close_tag"
}

dwm_keyboards
