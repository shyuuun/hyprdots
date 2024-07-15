#!/bin/bash

# made by kokutaro

# path of your directory
DIR_PATH="$HOME/Pictures/Screenshot"
filename="$DIR_PATH/$(date +%s_screenshot.png)"

selection="1. Select active screen screenshot\n2. Screenshot region\n3. Screenshot All"

select_app=$(echo -e $selection | rofi -dmenu -i -p "Select:")

# checks if directory is exist
if [ ! -d "$DIR_PATH" ]; then
  echo "Directory not exist. Creating it...."
  mkdir -p "$DIR_PATH"
fi

case "$select_app" in
1*)
  grim -g "$(slurp -o)" "$filename"
  wl-copy <"$filename"
  notify-send -i $filename -t 3000 "Screenshot saved" "File saved on: $filename"
  ;;
2*)
  grim -g "$(slurp)" "$filename"
  wl-copy <"$filename"
  notify-send -i $filename -t 3000 "Screenshot saved" "File saved on: $filename"
  ;;
3*)
  grim "$filename"
  wl-copy <"$filename"
  notify-send -i $filename -t 3000 "Screenshot saved" "File saved on: $filename"
  ;;
*)
  echo default
  ;;
esac
