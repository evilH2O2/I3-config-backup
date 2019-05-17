icon=""
if ! update_pacman=$(n 2>/dev/null | pacman -Syu 2>/dev/null | grep -E "\([0-9]*\)" -o | grep -E "[0-9]*" -o); then
    update_pacman=0
fi

if ! update_aur=$(yay -Qum 2> /dev/null | wc -l); then
    update_aur=0
fi

# updates=$(("$update_pacman" + "$update_aur"))

# if [ "$updates" -gt 0 ]; then
#     echo " $updates"
# else
#     echo ""
# fi

# echo "$icon $update_pacman:$update_aur"

if [[ "$update_pacman" -eq 0 && "$update_aur" -eq 0 ]]; then
    echo "$icon $update_pacman  $update_aur"
else
    echo "$icon $update_pacman  $update_aur"
fi

