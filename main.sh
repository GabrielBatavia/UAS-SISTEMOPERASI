#!/bin/bash

echo "Selamat Datang di BangGab"
echo "------------------------------"
echo "Kamu mau BangGab lakukan apa? :"
echo "1. Hapus File/Folder"
echo "2. Salin File"
echo "3. Pindahkan File"
echo "4. Ganti Nama File"
echo "5. Lihat Tanggal"
echo "6. Lihat Username"
echo "7. Lihat Waktu"
echo "------------------------------"
read -p "Masukkan Pilihan: " pilihan

case $pilihan in
    1)
        read -p "Masukkan path file/folder yang akan dihapus: " path
        if [ -z "$path" ]; then
            echo "Path tidak boleh kosong!"
        else
            rm -r "$path"
        fi
        ;;
    2)
        read -p "Masukkan path file sumber: " src
        read -p "Masukkan path tujuan: " dest
        if [ -z "$src" ] || [ -z "$dest" ]; then
            echo "Path sumber dan tujuan tidak boleh kosong!"
        else
            cp "$src" "$dest"
        fi
        ;;
    3)
        read -p "Masukkan path file sumber: " src
        read -p "Masukkan path tujuan: " dest
        if [ -z "$src" ] || [ -z "$dest" ]; then
            echo "Path sumber dan tujuan tidak boleh kosong!"
        else
            mv "$src" "$dest"
        fi
        ;;
    4)
        read -p "Masukkan path file yang akan diganti nama: " path
        read -p "Masukkan nama baru: " newname
        if [ -z "$path" ] || [ -z "$newname" ]; then
            echo "Path file dan nama baru tidak boleh kosong!"
        else
            mv "$path" "$(dirname "$path")/$newname"
        fi
        ;;
    5)
        echo "Tanggal hari ini: $(date +%Y-%m-%d)"
        ;;
    6)
        echo "Username saat ini: $(whoami)"
        ;;
    7)
        echo "Waktu saat ini: $(date +%H:%M:%S)"
        ;;
    *)
        echo "Pilihan tidak valid"
        ;;
esac
