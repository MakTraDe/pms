#!/bin/bash  
source config
        while true
	do
		rm minsk > /dev/null 2>&1

		wget http://pogoda.tut.by/city/minsk > /dev/null 2>&1
		grep '<span\ class=\"temp-i\">.*<\/span>' minsk | sed -n '1p' | sed 's/[^\-\+[0-9]//g'
                   sleep $timeout
        	
	done
