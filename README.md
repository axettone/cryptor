# cryptor
A suite designed to encrypt and decrypt files using openssl

## How to use


1) The recipient generates a keypair

`./generate_keys.sh`

and sends the public key to his/her friends.

2) His/her friend encodes a file

`./encrypt.sh public_key.pem classified_file`

and sends the encoded file + the encoded key `key.bin.enc` to the recipient.

3) The recipient decodes the file

`./decrypt.sh private_key.pem classified_file.aes`

## Reference

Just look at https://github.com/axettone/manuals/blob/master/cryptography/rsa/encrypt_a_file.md
