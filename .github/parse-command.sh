#!/bin/bash

if [[ $(echo $BODY | awk '{print $1}')=="@aeolus" ]]; then
    if [[ $(echo $BODY | awk '{print $2}')=='please' ]]; then
        command=$(echo $BODY | awk '{for (i=3; i<NF; i++) printf $i " "; print $NF}')
        echo "Thank you for being polite.  I can certainly \"$command\"" 
    else
        echo "Please use the magic word."
    fi
fi
