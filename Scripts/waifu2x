#!/bin/bash

FOLDER=/home/eddy/rename
cd $FOLDER

# Skip big images
for f in *.png *.jpg *.jpeg; do
   read w h < <(convert "$f" -format "%w %h" info:)
   if [ "$h" -ge "1200" ]; then
      /usr/bin/mv $f $FOLDER/2x/$f
   fi
done

waifu2x-converter-cpp -i $FOLDER -o $FOLDER/2x
rename '_[L1][x2.00]' '' $FOLDER/2x/*.png
rm $FOLDER/*.jpg
rm $FOLDER/*.png
notify-send "Done!" --icon=dialog-information
