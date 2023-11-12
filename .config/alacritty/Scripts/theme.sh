#  _____ _           ____                     _   _ _        _       
# |_   _| |__   ___ / ___| __ _ ___ ___ _   _| \ | (_)_ __  (_) __ _ 
#   | | | '_ \ / _ \ |  _ / _` / __/ __| | | |  \| | | '_ \ | |/ _` |
#   | | | | | |  __/ |_| | (_| \__ \__ \ |_| | |\  | | | | || | (_| |
#   |_| |_| |_|\___|\____|\__,_|___/___/\__, |_| \_|_|_| |_|/ |\__,_|
#                                       |___/             |__/       
#   Spawned: Thu Oct 19 2023 - 06:58
#  Last Mod: Mon Oct 23 2023 - 17:35
#  Config:
#  Depends:
#  Note:
#

# Pull theme list
# ls | grep yaml | awk '{print $8}' | cut -d "." -f 1
# theme_directory="$HOME/.config/alacritty"
#!/bin/bash

theme_directory="$HOME/.config/alacritty/"
themes=($(ls "$theme_directory" | grep -E '\.yaml$'))

selected_theme=$(printf "%s\n" "${themes[@]}" | fzf --prompt "Select an Alacritty theme:")

if [ -n "$selected_theme" ]; then
  config_file="$HOME/.config/alacritty/alacritty.yml"

  temp_config_file=$(mktemp)
  cp "$config_file" "$temp_config_file"

  sed -i '/^import:/,/^  -/d' "$temp_config_file"

  echo "import:" >> "$temp_config_file"
  echo "  - $theme_directory$selected_theme" >> "$temp_config_file"

  mv "$temp_config_file" "$config_file"

  echo "Updated Alacritty configuration with $selected_theme."
else
  echo "No theme selected. Alacritty configuration not updated."
fi




#
#
#
