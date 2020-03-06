#!/bin/bash

if [ "$#" -ne 3 ]; then
	echo "Usage: $0 private_key.pem key.bin.enc file.aes"
	exit 1
fi
openssl rsautl -decrypt -inkey "${1}" -in "${2}" -out key.bin
openssl enc -d -aes-256-cbc -in "${3}" -out "decoded_${3}" -pass file:key.bin
