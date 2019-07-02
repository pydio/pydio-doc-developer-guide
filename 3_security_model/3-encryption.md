
The encryption middleware is where the file encryption is performed: it adds a layer in the process of reading / writing a file that takes care of decrypting / encrypting the data on the fly.

Main objects involved are:

- **The protection key tool**: seals/unseals keys used for file encryption.
- **The data key service**: stores sealed key and metadatas that have been used to encrypt the file.
- **The encryption materials**: perform the actual file encryption and decryption.

## The encryption materials

The encryption materials object implements the `io.ReadCloser` interface and wraps an input file stream content. Its `io.Read()` method reads blocks of data from the wrapped stream and performs necessary tranformations.

When encrypting, the blocks are encrypted using an unique set of paramters. These parameters are put in a header that is added to the encrypted data to create the output block. All output blocks are then concatenated to form the output file.

When decrypting, the data of the blocks are decrypted according to the header. The plain data blocks are then concatenated to form the plain file.

## File encryption workflow

Now, here is what happens in the encryption handler when a user uploads a file to an encrypted datasource:

- A request is sent to the data key service to load a key associated with the user UUID and the file UUID:
  - if no association is found, a key is generated. A copy of the generated key is then sealed with the protection key tool and saved to the data key service,
  - if an association is found, the key is unsealed using the protection key tool.
- The encryption materials object is created and receives the key.
- It then reads the input file stream, transforms it block by block (if multipart is involved) and stores an encrypted version of the file.

## Formatting data to support HTTP range request and multi-part

An encrypted file is a concatenation of blocks that have the following format:

- A header
  - Options
    - Part ID: The file part number (in case of multi-part uploaded files)
    - Position: The position of the block in the file part
    - Key: sealed version of the encryption key
    - User ID: The file owner UUID
  - Nonce: 12 bytes of random data
  - Data length: The size of the block data
- The data

Since the specification of standard multi-part upload say that the parts can have diffrents size, this format fits and prevents from using block padding.

Furthermore, block headers are also stored in the data key service: they are used to calculate the number of blocks to skip when handling a download request with range options.
