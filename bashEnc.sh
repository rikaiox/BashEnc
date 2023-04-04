#!/bin/bash


while true; do
    clear
    echo "Select an option:"
    echo
    echo "1. Encrypt file"
    echo "2. Decrypt file"
    echo
    read -p "Enter your choice [1-2]: " choice
    echo

    case $choice in
        1)
            read -p "Enter the filename to encrypt: " filename
            read -s -p "Enter an encryption password: " password
            openssl aes-256-cbc -a -salt -in "$filename" -out "${filename}.enc" -k "$password"
            echo
            echo -e "\nFile successfully encrypted."
            echo
            ;;
        2)
            read -p "Enter the filename to decrypt: " filename
            read -s -p "Enter the decryption password: " password
            openssl aes-256-cbc -d -a -in "$filename" -out "${filename%.*}" -k "$password"
            echo
            echo -e "\nFile successfully decrypted."
            echo
            ;;
        *)
            echo "Invalid option. Please try again."
            continue
            ;;
    esac

    read -p "Do you want to encrypt or decrypt again? (y/n): " choice_again
    case $choice_again in
        [Yy])
            continue
            ;;
        [Nn])
            echo "Exiting program."
            exit 0
            ;;
        *)
            echo "Invalid option. Exiting program."
            exit 1
            ;;
    esac
done
