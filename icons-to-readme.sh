#!/usr/bin/env bash

declare -a folders=(icons icons_currencies icons_wallets)
writefile="./README.md"

# Clear output file (*turncate 0)
> $writefile

for folder in "${folders[@]}"; do

	echo "folder: $folder"
	# write header for the folder
	echo "# $folder" >> $writefile

	# loop through all icons in folder

	# this will be one string per icons directory to concatenate all the icon
	# html tags to avoid line breaks after each tag
	iconsbatch=""
	for icon in "./$folder/"*.svg; do
		echo "icon: $icon"
		if [[ -f $icon ]]; then
			# <img src="icons/add.svg" width="24" height="24"/>
			# echo "![$file]($file)" >> README.md
			icontag="<img src='$icon' width='24' height='24'/>"
			iconsbatch="$iconsbatch $icontag"
		fi
	done
	echo $iconsbatch >> $writefile
done
