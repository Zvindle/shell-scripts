if [[ "$1" == "shutdown" ]]; then
    shutdown now
elif [[ "$1" == "reboot" ]]; then
    reboot
elif [[ "$1" == "youtube" ]]; then
    xdg-open 'https://youtube.com/'
elif [[ "$1" == "soundcloud" ]]; then
    xdg-open 'https://soundcloud.com/'
else
    echo "    invalid argument $1"
    echo ""
cat << EOF
    usage: remote-scripts [shutdown|reboot|youtube|soundcloud]

    shutdown - runs 'shutdown now'
    reboot - runs 'reboot'
    youtube - runs 'open https://youtube.com/'
    soundcloud - runs 'open https://soundcloud.com/'
EOF
fi
