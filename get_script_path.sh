#!/bin/bash

#Get the path current running shell script
getScriptPath() {
    if [ -d ${0%/*} ]
    then
	abspath=$(cd ${0%/*} && echo $PWD/${0##*/})
	# to get the path only - not the script name - add
	pathOnly=`dirname "$abspath"`
    else
	progdir=`dirname $0`
	cd $progdir
	pathOnly=$PWD
    fi
    echo $pathOnly;
    return
}

getScriptPath
