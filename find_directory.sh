#!/bin/bash

find_directory(){
rez=$(find / -name "$1" )
 if [ $rez -ne $null ]
 then 
	echo  $rez
 fi
}

find_directory
