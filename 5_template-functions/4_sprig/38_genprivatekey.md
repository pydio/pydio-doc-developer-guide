
The `genPrivateKey` function generates a new private key encoded into a PEM
block.

It takes one of the values for its first param:

- `ecdsa`: Generate an elliptic curve DSA key (P256)
- `dsa`: Generate a DSA key (L2048N256)
- `rsa`: Generate an RSA 4096 key