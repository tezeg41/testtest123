#!/bin/bash
case "$2" in
    MULT) echo $[ $1 * $3 ] ;;
    ADD) echo $[ $1 + $3 ] ;;
    SUB) echo $[ $1 - $3 ] ;;
    DIV) echo $[ $1 / $3 ] ;;
    MOD) echo $[ $1 % $3 ] ;;
    EXP) echo $[ $1 ** $3 ] ;;
esac
