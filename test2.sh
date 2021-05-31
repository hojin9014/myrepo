#!/bin/sh

if [ ! -e "$1" ]; then
	echo $1 does not exit
elif [ -d "$1" ]; then
	echo $1 is a directory
elif [ -b "$1" ]; then
	echo $1 is a Block device
elif [ -c "$1" ]; then
	echo $1 is a char device
elif [ -p "$1" ]; then
	echo $1 is a pipe
elif [ -S "$1" ]; then
	echo $1 is a Socket device
elif [ -f "$1" ]; then
	echo $1 is a file
elif [ -L "$1" ]; then
	echo $1 is a Symbolic link
else echo I dont know.
fi
