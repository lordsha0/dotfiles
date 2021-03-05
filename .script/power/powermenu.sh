list= cat ~/.script/power/menu.txt | rofi -dmenu -config ~/.script/power/config.rasi >> ~/.script/temp/option.txt
if [ "$(cat ~/.script/temp/option.txt)" == "poweroff" ]
then
    rm ~/.script/temp/option.txt
    sudo poweroff
elif [ "$(cat ~/.script/temp/option.txt)" == "reboot" ]
then
    rm ~/.script/temp/option.txt
    sudo reboot
else
    echo "cancelling"
    rm ~/.script/temp/option.txt
fi
