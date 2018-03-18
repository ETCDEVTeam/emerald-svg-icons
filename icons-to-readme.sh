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
	for icon in "./$folder/"*.svg; do
		echo "icon: $icon"
		if [[ -f $icon ]]; then
			# <img src="icons/add.svg" width="24" height="24"/>
			# echo "![$file]($file)" >> README.md
			echo "<img src='$icon' width='24' height='24'/>" >> $writefile
		fi
	done
done
