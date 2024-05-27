# Data Diri

|                |                                       |
| -------------- | ------------------------------------- |
| NIM            | **2341720184**                        |
| Nama Lengkap   | **Gabriel Batavia Xaverius**          |
| Kelas          | TI-1B                                 |
| Dosen Pengampu | Erfan Rohadi, ST., M.Eng., Ph.D.      |
|                | Mohammad Faried Rahmat, S.ST., M.Tr.T |

# SISTEM OPERASI

### Fitur

| **No** | **Fitur**                             | **Detail**                                                                  |
| ------ | ------------------------------------- | --------------------------------------------------------------------------- |
| 1      | Hapus File/Folder                     | Menghapus file atau folder pada direktori yang dipilih dengan konfirmasi.   |
| 2      | Salin File                            | Menyalin file dari sumber ke tujuan dengan pesan sukses/gagal.              |
| 3      | Pindahkan File                        | Memindahkan file dari sumber ke tujuan dengan pesan sukses/gagal.           |
| 4      | Ganti Nama File                       | Mengganti nama file dengan pesan sukses/gagal.                              |
| 5      | Lihat Tanggal                         | Menampilkan tanggal hari ini.                                               |
| 6      | Lihat Username                        | Menampilkan username saat ini.                                              |
| 7      | Lihat Waktu                           | Menampilkan waktu saat ini.                                                 |
| 8      | Tampilkan Daftar File di Direktori    | Menampilkan daftar file di direktori yang dipilih dengan output terperinci. |
| 9      | Tampilkan Ruang Disk yang Digunakan   | Menampilkan penggunaan ruang disk dalam format yang mudah dibaca.           |
| 10     | Tampilkan Proses yang Sedang Berjalan | Menampilkan proses yang sedang berjalan.                                    |
| 11     | Tampilkan Informasi Sistem            | Menampilkan informasi sistem termasuk CPU dan RAM.                          |
| 12     | Tampilkan Log Sistem Terbaru          | Menampilkan log sistem terbaru.                                             |
| 13     | Tampilkan Jaringan yang Terhubung     | Menampilkan informasi antarmuka jaringan dalam format yang mudah dipahami.  |

### Penjelasan Kode

| **No** | **Syntax Kode**                       | **Penjelasan**                                                                 | **Contoh Penggunaan dalam Fungsi**                           |
|--------|---------------------------------------|-------------------------------------------------------------------------------|--------------------------------------------------------------|
| 1      | `#!/bin/bash`                         | Shebang untuk menentukan bahwa script ini dijalankan menggunakan Bash sebagai interpreter. | Header script                                                 |
| 2      | `echo`                                | Menampilkan pesan ke layar.                                                   | Digunakan di semua fungsi untuk menampilkan pesan             |
| 3      | `read -p`                             | Membaca input dari pengguna.                                                  | Digunakan di semua fungsi yang memerlukan input               |
| 4      | `if [ -z "$var" ]`                    | Memeriksa apakah variabel kosong.                                             | Digunakan di fungsi 1, 2, 3, 4, dan 8                         |
| 5      | `rm -r`                               | Menghapus file atau folder.                                                   | Fungsi 1 (Hapus File/Folder)                                  |
| 6      | `cp`                                  | Menyalin file dari sumber ke tujuan.                                          | Fungsi 2 (Salin File)                                         |
| 7      | `mv`                                  | Memindahkan atau mengganti nama file.                                         | Fungsi 3 (Pindahkan File) dan 4 (Ganti Nama File)             |
| 8      | `date`                                | Menampilkan tanggal atau waktu.                                               | Fungsi 5 (Lihat Tanggal) dan 7 (Lihat Waktu)                  |
| 9      | `whoami`                              | Menampilkan username pengguna saat ini.                                       | Fungsi 6 (Lihat Username)                                     |
| 10     | `ls -la`                              | Menampilkan daftar file dan folder dengan detail.                             | Fungsi 8 (Tampilkan Daftar File di Direktori)                 |
| 11     | `df -h`                               | Menampilkan penggunaan ruang disk.                                            | Fungsi 9 (Tampilkan Ruang Disk yang Digunakan)                |
| 12     | `ps aux`                              | Menampilkan semua proses yang sedang berjalan di sistem.                      | Fungsi 10 (Tampilkan Proses yang Sedang Berjalan)             |
| 13     | `lscpu`                               | Menampilkan informasi tentang CPU.                                            | Fungsi 11 (Tampilkan Informasi Sistem)                        |
| 14     | `free -h`                             | Menampilkan total RAM yang tersedia.                                          | Fungsi 11 (Tampilkan Informasi Sistem)                        |
| 15     | `journalctl -n 10`                    | Menampilkan 10 log sistem terbaru.                                            | Fungsi 12 (Tampilkan Log Sistem Terbaru)                      |
| 16     | `ip -o -4 addr show up`               | Menampilkan alamat IP dari antarmuka jaringan yang aktif.                     | Fungsi 13 (Tampilkan Jaringan yang Terhubung)                 |
| 17     | `ifconfig`                            | Alternatif untuk menampilkan informasi jaringan jika `ip` tidak tersedia.     | Fungsi 13 (Tampilkan Jaringan yang Terhubung)                 |
| 18     | `netsh interface ipv4 show interfaces`| Menampilkan informasi jaringan di Windows jika `ip` dan `ifconfig` tidak tersedia. | Fungsi 13 (Tampilkan Jaringan yang Terhubung)                 |


### SCREENSHOT PROGRAM

1. Fitur Hapus File/Folder

![image](https://github.com/GabrielBatavia/UAS-SISTEMOPERASI/assets/143175487/e9360884-c6e9-4684-9d3b-3ca4e2248c5a)

![image](https://github.com/GabrielBatavia/UAS-SISTEMOPERASI/assets/143175487/bfba83e2-b472-4fc8-b26a-8785c82eec6f)


2. Fitur Salin File

![image](https://github.com/GabrielBatavia/UAS-SISTEMOPERASI/assets/143175487/d23a80a8-95cf-4bec-ae43-8ecee5b9670f)


3. Fitur Pindahkan File

![image](https://github.com/GabrielBatavia/UAS-SISTEMOPERASI/assets/143175487/683c7b77-fbba-481f-ac24-046525198417)


4. Fitur Ganti Nama File 

![image](https://github.com/GabrielBatavia/UAS-SISTEMOPERASI/assets/143175487/717016d5-f933-4869-a8a4-2c7c7ab7f223)


5. Fitur Lihat Tanggal

![image](https://github.com/GabrielBatavia/UAS-SISTEMOPERASI/assets/143175487/d202d21e-e529-4eff-a70d-6186975055ec)


6. Fitur Lihat Username

![image](https://github.com/GabrielBatavia/UAS-SISTEMOPERASI/assets/143175487/cf5b7fb8-feed-4e15-a9aa-a381f2feaec5)


7. Fitur Lihat Waktu

![image](https://github.com/GabrielBatavia/UAS-SISTEMOPERASI/assets/143175487/acbe3833-599f-4d94-a329-d780d7ad3c88)


8. Fitur Tampilkan Daftar File di Direktori

![image](https://github.com/GabrielBatavia/UAS-SISTEMOPERASI/assets/143175487/4075170e-fe53-4546-bc4c-c8f21d3ceab6)


9. Fitur Tampilkan Ruang Disk yang Digunakan

![image](https://github.com/GabrielBatavia/UAS-SISTEMOPERASI/assets/143175487/89d74799-5c64-47c5-9276-db7f2f2987f2)


10. Fitur Tampilkan Proses yang Sedang Berjalan

![image](https://github.com/GabrielBatavia/UAS-SISTEMOPERASI/assets/143175487/55a2b6ec-f61b-4cc3-910d-25f812d58e61)


11. Fitur Tampilkan Informasi Sistem

![image](https://github.com/GabrielBatavia/UAS-SISTEMOPERASI/assets/143175487/47036f83-a1fc-482a-bb29-31a28f0386b0)


12. Fitur Tampilkan Log Sistem Terbaru

![image](https://github.com/GabrielBatavia/UAS-SISTEMOPERASI/assets/143175487/6cd95c73-9f7f-4d98-b0fe-5f42f1fdb208)


13. Fitur Tampilkan Jaringan yang Terhubung

![image](https://github.com/GabrielBatavia/UAS-SISTEMOPERASI/assets/143175487/4e3c65fb-290f-4a77-9940-cac00be513d6)
