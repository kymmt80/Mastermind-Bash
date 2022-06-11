#! /bin/bash

generateCode() {
    echo $((RANDOM % 10000));
}

printCompareResult(){
    local guess="$1"
    local code="$2"
    echo "$guess is not equal to $code"

    for (( i=0; i<${#guess}; i++)) 
    do
        if [ ${code:$i:1} -eq ${guess:$i:1} ] 
        then
            echo "B"
        fi
    done
    
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