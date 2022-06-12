# Mastermind-Bash

```
$$     $$    $$$     $$$$$$  $$$$$$$$ $$$$$$$$ $$$$$$$$  $$     $$ $$$$ $$    $$ $$$$$$$$ 
$$$   $$$   $$ $$   $$    $$    $$    $$       $$     $$ $$$   $$$  $$  $$$   $$ $$     $$
$$$$ $$$$  $$   $$  $$          $$    $$       $$     $$ $$$$ $$$$  $$  $$$$  $$ $$     $$
$$ $$$ $$ $$     $$  $$$$$$     $$    $$$$$$   $$$$$$$$  $$ $$$ $$  $$  $$ $$ $$ $$     $$
$$     $$ $$$$$$$$$       $$    $$    $$       $$   $$   $$     $$  $$  $$  $$$$ $$     $$
$$     $$ $$     $$ $$    $$    $$    $$       $$    $$  $$     $$  $$  $$   $$$ $$     $$
$$     $$ $$     $$  $$$$$$     $$    $$$$$$$$ $$     $$ $$     $$ $$$$ $$    $$ $$$$$$$$ 
```

## How to Play
The script chooses a 4-digit code, you as the user can guess the code 12 times. After each guess you are given a hint. The hints are 4-character strings consisting of three types of characters. The i'th character of the hint, corresponds to the i'th digit of your guess. Here are the characters:

1. ■: This character means that the corresponding number exists in the code and is in the correct place.
2. ◪: This character means that the corresponding number exists in the code but it is not in the correct place.
3. □: This character means that the corresponding number does not exist in the code.

note: there may exist duplicated digits in the code.

## How to Run
```
$ bash mastermind.sh
```