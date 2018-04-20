#!/bin/bash

#[ `which $1` ] && echo "git : installed" || sudo apt-get install -y $1

function IsCmdInstalled(){
    if [ $# -lt 1 ]; then
	echo "IsCmdInstalled: parameters -lt 1"
	exit 255
    fi  

    [ `which $1` ] && echo "$1: installed" && return 0

    echo "$1: Not be installed"
    return 1
}

IsCmdInstalled $1
