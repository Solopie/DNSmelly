#!/bin/bash

if [ ! "$1" ]; then
    echo ERR: Give payload as argument
    exit
fi

payload=$(echo -n $1 | base64)

res=$(dig $payload.example.com @localhost -p 1234 +short)

if [ ! "$res" ]; then
    echo No output
    exit
fi

echo -n $res | tr -d "\""| base64 -d
echo
