#!/bin/bash

IMGDIR=source/img/z

for foo in 16x16 32x32 48x48 57x57 60x60 64x64 72x72 76x76 96x96 114x114 120x120 144x144 152x152 180x180 192x192 256x256 512x512 310x150
do
	convert $IMGDIR/zs.png -resize ${foo} -background none -gravity center -extent ${foo} $IMGDIR/zs-${foo}.png
done
