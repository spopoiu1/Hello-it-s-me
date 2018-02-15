#!/bin/bash

#script pt copierea de fisiere date ca si parametri aici in script la apel
copy_file(){
cp $1 $2
}
copy_file /root/functions/1.txt /root/test/
