#!/bin/bash

#Variable
BASE=/home/vboxuser/myScripts
DAYS=10
DEPTH=2
RUN=0

#Check if the directory is present or not 
if [ ! -d $BASE ]
then 
	echo "directory does not exist: $BASE"
	exit 1

fi

#Create 'archive' folder  is present or not 
if [ ! -d $BASE/archive ]
then 
        mkdir $BASE/archive

fi
# find the list of files larger then 20 mb
for i in $(find "$BASE" -maxdepth "$DEPTH" -type f -size +19M)
do
	if [ $RUN -eq 0 ]
	then
		echo "Zipping ....." 
		gzip "$i" || exit 1
		mv "$i.gz" "$BASE/archive" || exit 1
	fi
done
