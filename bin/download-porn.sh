#!/bin/sh
tmpfile="$(mktemp)"
imgurl="https://purrbot.site/api/img/nsfw/neko/gif/"
url=$(curl -fsSL "$imgurl" | jq -r ".link")
format=$(echo "$url" | grep -o "\.[[:lower:]]*$")
curl -fsSLo "$tmpfile$format" "$url"
secretdir="$HOME/.local/share/porn/"
mkdir -p $secretdir
mv $tmpfile$format $secretdir
