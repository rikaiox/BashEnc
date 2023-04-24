# BashEnc

BashEnc is a command-line tool for encrypting and decrypting files using AES-256 encryption. This tool is written in Bash and utilizes the `openssl` command-line tool for encryption.

## Installation

1. Clone the BashEnc repository:

```
git clone https://github.com/<your-username>/bashEnc.git
```

2. Make sure you have OpenSSL installed on your machine.
3. Run `bashEnc.sh` from the cloned repository.

## Usage

1. To encrypt a file, run BashEnc and select option `1`. You will be prompted to enter the filename you wish to encrypt, as well as a password to use for encryption.

```./bashEnc.sh
Select an option:

1. Encrypt file
2. Decrypt file

Enter your choice [1-2]: 1

Enter the filename to encrypt: myfile.txt
Enter an encryption password: <enter-your-password>

File successfully encrypted.

Do you want to encrypt or decrypt again? (y/n):
```

2. To decrypt a file, run BashEnc and select option `2`. You will be prompted to enter the filename you wish to decrypt, as well as the password you used to encrypt the file.

```./bashEnc.sh
Select an option:

1. Encrypt file
2. Decrypt file

Enter your choice [1-2]: 2

Enter the filename to decrypt: myfile.txt.enc
Enter the decryption password: <enter-your-password>

File successfully decrypted.

Do you want to encrypt or decrypt again? (y/n):
```

## Features

- Uses AES-256 encryption for strong security.
- Easy-to-use command-line interface.
- Ability to encrypt and decrypt files with a single command.

## Security

BashEnc uses strong AES-256 encryption to secure your files. However, it is important to note that encryption is only as secure as the password used to encrypt the file. Make sure to use a strong, unique password that is not easily guessable. Additionally, it is important to keep your password secret and secure.

## License

This project is licensed under the terms of the GNU General Public License version 3 (GPLv3).

The GPLv3 is a copyleft license that requires anyone who distributes your code or a modified version of your code to make the source code available under the same license. This ensures that derivative works of your code will also be open source.

For more information about the terms of the GPLv3, please see the [full license text](https://www.gnu.org/licenses/gpl-3.0.en.html).

By contributing to this project, you agree to license your contributions under the same license as the project.

## Contributing

Contributions to this project are welcome! If you'd like to contribute, please create a pull request on GitHub.
