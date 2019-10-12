#!/bin/bash
dir=$1
str1="export PATH=\"\$PATH:$dir\""
str2="export PATH=\"\$PATH:$PWD\""
opfile="/home/incrypto/.paths"
if [ -d "$dir" ]
then
    count=$(grep -c "$str1" "$opfile") 

    if [ $count == 0 ] 
    then 
        echo -e "export PATH=\"\$PATH:$dir\"\\n" >> $opfile 
        echo "$dir added to PATH"
    else
        echo "PATH already exists"
    fi
    
else
    count=$(grep -c "$str2" "/home/incrypto/.paths")

    if [ $count == 0 ] 
    then 
        echo -e "export PATH=\"\$PATH:$PWD\"\\n" >> $opfile 
        echo "$PWD added to PATH"
    else
        echo "PATH already exists"
    fi
fi    





