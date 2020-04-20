#!/bin/bash

if [ $# -ne 1 ]; then
	echo "usage: $0 dirctory name" 1>&2
	exit 1
fi

cd $1
while true
do
	git fetch
	clear
	pwd
	date +"%T"
	git diff master origin/master --name-status
	sleep 10
done
cd -

