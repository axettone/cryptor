#!/bin/bash

if [ "$#" -ne 2 ]; then
	echo "Usage: $0 public_key.pem file"
	exit 1
fi
OUT_FILE="${2}.aes"
echo ${OUT_FILE}
openssl rand -base64 32 > key.bin
openssl rsautl -encrypt -inkey "${1}" -pubin -in key.bin -out key.bin.enc
openssl enc -aes-256-cbc -salt -in "${2}" -out "${OUT_FILE}" -pass file:key.bin
echo "Remember: you have to send both the encrypted key and encrypted file"

