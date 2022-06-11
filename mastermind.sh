#! /bin/bash

generateCode() {
    echo $((RANDOM % 9000 + 1000));
}

printCompareResult(){
    local guess="$1"
    local code="$2"

    declare -i flag;

    for (( i=0; i<${#guess}; i++)) 
    do
        flag=0
        if [ ${code:$i:1} -eq ${guess:$i:1} ] 
        then
            echo -n "B"
        else
            for (( j=0; j<${#code}; j++))
            do
                if [ ${code:$j:1} -eq ${guess:$i:1} ] 
                then
                    echo -n "W"
                    flag=1
                    break
                fi
            done
            if [ $flag -eq 0 ]
            then
                echo -n "_"
            fi
        fi
    done
    
    echo
    
}

run() {
    local code=$(generateCode)
    echo $code
   
    for round in {1..12}
    do
        echo "Round = $round"
        read guess
        printCompareResult "$guess" "$code"
    done
}

run