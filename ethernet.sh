#!/bin/bash
# this function gives you the number of network interfaces
function1(){
var1=$(ls -A /sys/class/net | wc -l)
echo $var1
}

function1
