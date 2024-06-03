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

