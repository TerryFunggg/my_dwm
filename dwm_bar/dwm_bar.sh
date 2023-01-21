LOC=$(readlink -f "$0")
DIR=$(dirname "$LOC")

# Define open/close tag
export open_tag="["
export close_tag="]"

. "$DIR/modules/dwm_date.sh"
. "$DIR/modules/dwm_alsa.sh"
. "$DIR/modules/dwm_keyboards.sh"
. "$DIR/modules/dwm_resources.sh"

parallelize() {
    while true
    do
        printf "Running parallel processes\n"
        #dwm_networkmanager &
        #dwm_weather &
        sleep 5
    done
}
parallelize &

# Update dwm status bar every second
while true
do
    # Append results of each func one by one to the upperbar string
    upperbar=""
    upperbar="$upperbar$(dwm_keyboards) "
    upperbar="$upperbar$(dwm_resources) "
    upperbar="$upperbar$(dwm_alsa) "
    upperbar="$upperbar$(dwm_date)"
    
    xsetroot -name "$upperbar"
    sleep 1
done
