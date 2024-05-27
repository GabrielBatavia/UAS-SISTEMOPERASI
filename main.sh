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
echo "8. Tampilkan Daftar File di Direktori"
echo "9. Tampilkan Ruang Disk yang Digunakan"
echo "10. Tampilkan Proses yang Sedang Berjalan"
echo "11. Tampilkan Informasi Sistem"
echo "12. Tampilkan Log Sistem Terbaru"
echo "13. Tampilkan Jaringan yang Terhubung"
echo "------------------------------"
read -p "Masukkan Pilihan: " pilihan

case $pilihan in
    1)
        read -p "Masukkan path file/folder yang akan dihapus: " path
        if [ -z "$path" ]; then
            echo "Path tidak boleh kosong!"
        else
            if rm -r "$path"; then
                echo "File/Folder '$path' berhasil dihapus."
            else
                echo "Gagal menghapus file/folder '$path'."
            fi
        fi
        ;;
    2)
        read -p "Masukkan path file sumber: " src
        read -p "Masukkan path tujuan: " dest
        if [ -z "$src" ] || [ -z "$dest" ]; then
            echo "Path sumber dan tujuan tidak boleh kosong!"
        else
            if cp "$src" "$dest"; then
                echo "File berhasil disalin dari '$src' ke '$dest'."
            else
                echo "Gagal menyalin file dari '$src' ke '$dest'."
            fi
        fi
        ;;
    3)
        read -p "Masukkan path file sumber: " src
        read -p "Masukkan path tujuan: " dest
        if [ -z "$src" ] || [ -z "$dest" ]; then
            echo "Path sumber dan tujuan tidak boleh kosong!"
        else
            if mv "$src" "$dest"; then
                echo "File berhasil dipindahkan dari '$src' ke '$dest'."
            else
                echo "Gagal memindahkan file dari '$src' ke '$dest'."
            fi
        fi
        ;;
    4)
        read -p "Masukkan path file yang akan diganti nama: " path
        read -p "Masukkan nama baru: " newname
        if [ -z "$path" ] || [ -z "$newname" ]; then
            echo "Path file dan nama baru tidak boleh kosong!"
        else
            newpath="$(dirname "$path")/$newname"
            if mv "$path" "$newpath"; then
                echo "File berhasil diganti nama menjadi '$newname'."
            else
                echo "Gagal mengganti nama file '$path'."
            fi
        fi
        ;;
    5)
        echo "Tanggal hari ini:"
        echo "------------------"
        date +%Y-%m-%d
        ;;
    6)
        echo "Username saat ini:"
        echo "------------------"
        whoami
        ;;
    7)
        echo "Waktu saat ini:"
        echo "---------------"
        date +%H:%M:%S
        ;;
    8)
        read -p "Masukkan path direktori: " dir
        if [ -z "$dir" ]; then
            echo "Path direktori tidak boleh kosong!"
        else
            echo "Daftar file di direktori '$dir':"
            echo "------------------------------"
            ls -la "$dir"
        fi
        ;;
    9)
        echo "Ruang disk yang digunakan:"
        echo "---------------------------"
        df -h
        ;;
    10)
        echo "Proses yang sedang berjalan:"
        echo "----------------------------"
        ps aux
        ;;
    11)
        echo "Informasi Sistem:"
        echo "-----------------"
        echo "CPU:"
        lscpu | grep 'Model name'
        echo "RAM:"
        free -h | grep 'Mem:' | awk '{print $2}'
        ;;
    12)
        echo "Log sistem terbaru:"
        echo "-------------------"
        journalctl -n 10
        ;;
    13)
        echo "Informasi jaringan:"
        echo "-------------------"
        if command -v ip &> /dev/null
        then
            ip -o -4 addr show up | while read -r line; do
                interface=$(echo $line | awk '{print $2}')
                ip_address=$(echo $line | awk '{print $4}')
                echo "Antarmuka: $interface"
                echo "Alamat IP: ${ip_address%/*}"
                echo "Status: Terhubung"
                echo "-------------------"
            done
        elif command -v ifconfig &> /dev/null
        then
            ifconfig | grep -E '^(eth|wlan|en|wl)' -A 1 | while read -r line; do
                if [[ $line =~ ^(eth|wlan|en|wl) ]]; then
                    interface=$(echo $line | awk '{print $1}')
                elif [[ $line =~ "inet " ]]; then
                    ip_address=$(echo $line | awk '{print $2}')
                    echo "Antarmuka: $interface"
                    echo "Alamat IP: $ip_address"
                    echo "Status: Terhubung"
                    echo "-------------------"
                fi
            done
        else
            echo "Tidak ada perintah jaringan yang tersedia. Coba gunakan netsh dari Windows:"
            netsh interface ipv4 show interfaces
        fi
        ;;
    *)
        echo "Pilihan tidak valid"
        ;;
esac
