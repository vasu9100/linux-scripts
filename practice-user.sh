#!/bin/bash
who=$(whoami)

if [ ${who} == "root" ]; then

    echo "your are a root user"

else 
    echo "your are not root user please switch to root"

fi    
