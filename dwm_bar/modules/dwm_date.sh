#!/bin/sh

# Date is formatted like like this: "[Mon 01-01-00 00:00:00]"
dwm_date () {
    printf "%s" "$open_tag"
    printf "📆 %s" "$(date "+%a %d-%m-%y %T")"
    printf "%s\n" "$close_tag"
}

dwm_date
