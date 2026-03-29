#!/bin/bash

mkdir -p data log rekap sampah

touch data/penghuni.csv
touch log/tagihan.log
touch rekap/laporan_bulanan.txt
touch sampah/history_hapus.csv

tambah_penghuni() {
clear

echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "      TAMBAH PENGHUNI      "
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~"

read -p "Masukan Nama: " nama
read -p "Masukan Kamar: " kamar_baru
cek_kamar=$(awk -F',' -v k="$kamar_baru" '$2 == k {print $2}' data/penghuni.csv)
if [ -n "$cek_kamar" ];
then
echo "Kamar $kamar_baru sudah terisi"
sleep 2
return
fi

read -p "Masukan Harga Sewa: " harga_sewa
bukan_angka=$(echo "$harga_sewa" | tr -d '0-9')
if [ -n "$bukan_angka" ]; then
echo "Harga harus berupa angka"
sleep 2
return
fi
if [ "$harga_sewa" -le 0 ];
then
echo "Harga tidak valid, mohon input berupa angka"
sleep 2
return
fi

read -p "Masukan tanggal masuk (YYYY-MM-DD): " tanggal
hari_ini=$(date +%Y%m%d)
tanggal_input=$(echo "$tanggal" | tr -d '-')
if [ "$tanggal_input" -gt "$hari_ini" ];
then
echo "Tanggal tidak valid, tidak booleh melebihi hari ini"
sleep 2
return
fi

read -p "Masukan Status Awal (Aktif/Menunggak): " status
if  [ "$status" != "Aktif" ] && [ "$status" != "Menunggak" ];
then
echo "Status harus diisi Aktif/Menunggak"
sleep 2
return
fi

echo "$nama,$kamar_baru,$harga_sewa,$tanggal,$status" >> data/penghuni.csv

echo "[√] Penghini \"$nama\" berhasil ditambahkan ke Kamar $kamar dengan status $status"
sleep 5
}

hapus_penghuni(){
clear

echo "~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "      HAPUS PENGHUNI      "
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~"

read -p "Masukan nama penghuni: " nama_hapus

data_hapus=$(awk -F',' -v n="$nama_hapus" '$1 == n' data/penghuni.csv)

if [ -z "$data_hapus" ];
then
echo "[X] Penghuni bernama \"$nama_hapus\" todak ditemukan"
read -p "Tekan [ENTER] untuk kembali ke menu..."
return
fi

tanggal_hapus=$(date +%Y-%m-%d)
echo "$data_hapus,$tanggal_hapus" >> sampah/history_hapus.csv

awk -F',' -v n="$nama_hapus" '$1 != n' data/penghuni.csv > data/temp.csv
mv data/temp.csv data/penghuni.csv

echo "[√] Data penghuni \"$nama_hapus\" berhasil diarsipkan ke sampah/history_hapus.csv dan dihapus dari sistem"
read -p "Tekan [ENTER] untuk kembali ke menu..."
}

tampilkan_penghuni() {
clear
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "                   DAFTAR PENGHUNI KOST                   "
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

if [ ! -s data/penghuni.csv ]; then
echo "Kosong melompong bes! Belum ada penghuni."
else
echo "NAMA,KAMAR,HARGA,TANGGAL_MASUK,STATUS" > data/temp_tabel.csv

cat data/penghuni.csv >> data/temp_tabel.csv
column -t -s ',' data/temp_tabel.csv
rm data/temp_tabel.csv
fi

echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
read -p "Tekan [ENTER] untuk kembali ke menu..."
}

ubah_status() {
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "   UPDATE STATUS PENGHUNI   "
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

read -p "Masukkan nama penghuni yang ingin diupdate: " nama_update
status_lama=$(awk -F',' -v n="$nama_update" '$1 == n {print $5}' data/penghuni.csv)
if [ -z "$status_lama" ];
then
echo "[X] Error: Penghuni bernama \"$nama_update\" tidak ditemukan!"
read -p "Tekan [ENTER] untuk kembali ke menu..."
return
fi

echo "Status \"$nama_update\" saat ini adalah: $status_lama"
read -p "Masukkan status baru (Aktif/Menunggak): " status_baru
if [ "$status_baru" != "Aktif" ] && [ "$status_baru" != "Menunggak" ];
then
echo "[X] Error: Status harus diisi 'Aktif' atau 'Menunggak'!"
read -p "Tekan [ENTER] untuk kembali ke menu..."
return
fi

awk -F',' -v n="$nama_update" -v s="$status_baru" 'BEGIN {OFS=","} {if ($1 == n) $5 = s; print $0}' data/penghuni.csv > data/temp.csv
mv data/temp.csv data/penghuni.csv


echo "[√] Status \"$nama_update\" berhasil diubah menjadi $status_baru!"
read -p "Tekan [ENTER] untuk kembali ke menu..."
}

cetak_keuangan() {
clear
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "   CETAK LAPORAN KEUANGAN   "
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
if [ ! -s data/penghuni.csv ];
then
echo "[!] Data penghuni masih kosong, bes! Belum ada pemasukan."
read -p "Tekan [ENTER] untuk kembali ke menu..."
return
fi

total_pendapatan=$(awk -F',' '{total += $3} END {print total}' data/penghuni.csv)
waktu_cetak=$(date "+%Y-%m-%d %H:%M:%S")

echo "Total Pendapatan Kost Slebew: Rp $total_pendapatan"
echo "Dicetak pada: $waktu_cetak"

echo "[$waktu_cetak] Total Pendapatan: Rp $total_pendapatan" >> rekap/laporan_bulanan.txt

echo "[√] Laporan berhasil dicetak dan disimpan ke rekap/laporan_bulanan.txt!"
read -p "Tekan [ENTER] untuk kembali ke menu..."
}

kelola_corn() {
clear
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "   	  MENU KELOLA CORN	     "
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "1) Aktifkan Pengingat Tagihan Otomatis"
echo "2) Matikan Pengingat"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
read -p "Pilih opsi [1-2]: " opsi_corn
}
while true;
do
clear

echo "~<3~<3~<3 SISTEM MANAJEMEN KOST SLEBEW ~<3~<3~<3"
echo "======================================="
echo "1 | Tambah Penghuni Baru"
echo "2 | Hapus Penghuni"
echo "3 | Tampilkan Daftar Penghuni"
echo "4 | Update Status Penghuni"
echo "5 | Cetak Laporan Keuangan"
echo "6 | Kelola Cron (Pengingat Tagihan)"
echo "7 | Exit Program"
echo "======================================="
read -p "Enter option [1-7]: " opsi

if [[ $opsi != "1" && $opsi != "2" && $opsi != "3" && $opsi != "4" && $opsi != "5" && $opsi != "6" && $opsi != "7" ]];
then
echo "Opsi tidak valid! Gunakan angka 1-7"
sleep 2

else
case "$opsi" in
"1")
tambah_penghuni
;;
"2")
hapus_penghuni
;;
"3")
tampilkan_penghuni
;;
"4")
ubah_status
;;
"5")
cetak_keuangan
;;
"6")
kelola_corn
;;
"7")
echo "Program selesai, terimakasih!"
exit 0
;;
esac
fi
done
