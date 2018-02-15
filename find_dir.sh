#!/bin/bash

# script pentru gasirea unui fisier/director in sistem 
rez=$(find / -name "$1" )
echo $rez
