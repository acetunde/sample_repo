#!/bin/bash

#This script willo organise files in this directory according to their extension

#create a "music" directory if a .mp3 or a .flac file is found
for i in ./*.mp3;
do
	if [ -e "$i" ] && [ ! -d "music" ];
	then
		mkdir music
	fi
	break
done

for i in ./*.flac;
do
	if [ -e "$i" ] && [ ! -d "music" ];
	then
		mkdir music
	fi
	break
done

#create an "images" directory is a .jpg or a .png file if found
for i in ./*.jpg;
do
	if [ -e "$i" ] && [ ! -d "images" ];
	then
		mkdir images
	fi
	break
done

for i in ./*.png;
do
	if [ -e "$i" ] && [ ! -d "images" ];
	then
		mkdir images
	fi
	break
done

#create a "videos" directory if a .avi or a .mov file is found
for i in ./*.avi;
do
	if [ -e "$i" ] && [ ! -d "videos" ];
	then
		mkdir videos
	fi
	break
done

for i in ./*.mov;
do
	if [ -e "$i" ] && [ ! -d "videos" ];
	then
		mkdir videos
	fi
	break
done

#move each files to their specified directory, disregarding errors
mv *mp3 *flac music/ 2>/dev/null
mv *jpg *png  images/ 2>/dev/null
mv *avi *mov  videos/ 2>/dev/null
rm -v *.log 2>/dev/null

ls -la --color=auto
tree -aC
