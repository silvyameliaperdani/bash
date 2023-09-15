#!/bin/bash

# Cek apakah program 'tree' ada atau tidak
if ! command -v tree &>/dev/null; then
    echo "Program 'tree' tidak ditemukan."
    read -p "Apakah Anda ingin menginstalnya? (y/yes untuk menginstal): " user_confirmation
    user_confirmation=$(echo $user_confirmation | tr '[:upper:]' '[:lower:]')  # Konversi input ke huruf kecil
    if [[ $user_confirmation == "y" || $user_confirmation == "yes" ]]; then
        # Jalankan perintah instalasi 'tree'
        sudo apt-get update
        sudo apt-get install tree
        echo "Program 'tree' telah berhasil diinstal."
    else
        echo "Instalasi 'tree' dibatalkan."
    fi
else
    echo "Program 'tree' sudah terinstal."
fi
