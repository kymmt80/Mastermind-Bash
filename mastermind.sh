#! /bin/bash

generateCode() {
    echo $((RANDOM % 10000));
}

printCompareResult(){
    local guess="$1"
    local code="$2"
    echo "$guess is not equal to $code"
}

run() {
    local code=$(generateCode)
    echo $code

    for c in "$code"
    do
        echo $c
    done
   
    for round in {1..12}
    do
        echo "Round = $round"
        read guess
        printCompareResult "$guess" "$code"
    done
}

run