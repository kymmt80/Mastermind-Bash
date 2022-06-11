#! /bin/bash

generateCode() {
    echo $((RANDOM % 10000));
}

run() {

    generateCode
    local echo=$?
    echo $code

    for round in {1..12}
    do
        echo "Round = $round"
    done
}

run