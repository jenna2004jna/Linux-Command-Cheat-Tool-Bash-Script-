#!/bin/bash

echo "Enter Linux command:"
read cmd

case $cmd in
    ls)
        echo "Lists directory contents"
        ;;
    pwd)
        echo "Prints the current working directory"
        ;;
    cd)
        echo "Changes the current directory"
        ;;
    mkdir)
        echo "Creates a new directory"
        ;;
    rm)
        echo "Removes files or directories"
        ;;
    cp)
        echo "Copies files or directories"
        ;;
    mv)
        echo "Moves or renames files"
        ;;
    cat)
        echo "Displays file content"
        ;;
    *)
if [ -f commands.txt ]; then
    result=$(grep "^$cmd:" commands.txt | cut -d':' -f2)

    if [ -z "$result" ]; then
        echo "Command not found in cheat tool"
    else
        echo "$result"
    fi
else
    echo "commands.txt file not found"
fi
;;
esac