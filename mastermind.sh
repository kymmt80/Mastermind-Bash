#! /bin/bash

generateCode() {
    echo $((RANDOM % 10000));
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
    done
}

run