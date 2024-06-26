#!/bin/sh

for file in "$@"; do
	dir=$(dirname $file)

	if [[ $dir != "/usr/share/applications" ]] then
		echo "$dir is not '/usr/share/applications'." >&2
		continue
	fi

	doas rm -v $file
	doas ln -sv /dev/null $file
done
