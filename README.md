# LAPORAN PENGERJAAN PRAKTIKUM SISTEM OPERASI
## Soal 1
Untuk tahap awal pengerjaan praktikum ini, langkah yang saya lakukan pertama kali yaitu membuat folder pada terminal ubuntu dengan nama folder sisop_1_2026_IT_115 dengan isi file  KANJ.sh dan passenger.csv didalamnya. Akan tetapi saya ada kesalahan dalam penamaan folder sehingga saya menggantinya dengan nama soal_1.

<img width="959" height="337" alt="ss1" src="https://github.com/user-attachments/assets/c22e4e34-4cbe-451e-8d78-8cf44b899aff" />

<img width="568" height="58" alt="ss1 2" src="https://github.com/user-attachments/assets/ce6a4f68-6637-4a9e-a4f9-33a60425ece2" />

Selanjutnya didalam KANJ.sh  saya mendeklarasikan BEGIN dimana ini adalah kode yang dieksekusi sekali sebelum membaca input. Dalam BEGIN ini terdapat FS = “,” dimana ini merupakan variabel untuk membaca bahwa kolom di dalam passanger.sh dipisahkan oleh tanda koma.

Setelah kita tau bahwa baris itu dipisahkan olh koma, kita mendeklarasikan argumen yang nantinya dipilih oleh user (a, b, c, d, atau e) akan dimasukan ke dalam variabel opsi, ini digunakan agar tidak perlu menulis ARGV[2] berulang kali pada kode nya. Di sini kkita menggunakan ARGV[2] untuk menyimpan kata yang diketik dalam terminal saat jalanin perintah.

Selanjutnya dilakukan pengecekan menggunakan if dengan kondisi jika isi dari variabel opsi bukan a, b, c, d, atau e maka program akan berhenti dan langsung loncat ke blok END yang ditandai dengan exit. Selain itu, error_input = 1 menandakan bahwa perintah yang dijalankan true yang artinya error.

<img width="955" height="500" alt="ss2" src="https://github.com/user-attachments/assets/ac43007d-ab6f-43c6-9cb7-d0d72ea7369c" />

Setelah itu, pada bagian luar BEGIN kita menentukan kondisi atau pada kolom mana program akan mulai membaca data passenger.csv. Kita tentukan NR > 1 error_input != 1 yang artinya data akan mulai dibaca dimulai baris kedua karena di baris pertama hanya berisi header dan dibaca hanya jika input tidak bernilai 1 atau tidak terjadi error. Setelah mengetahui mana kolom yang akan dibaca, kita mendeklarasikan count_passenger++ untuk menghitung jumlah penumpang dalam data. Disini kita melakukan increment operator yang jumpahnya akan selalu bertambah 1 setiap ia membaca 1 baris.

<img width="449" height="52" alt="ss3" src="https://github.com/user-attachments/assets/47f55ba4-c629-4518-83dd-3c4a0d8944bb" />

Karena kita sudah membuat satu instruksi yang bisa dijalankan, alangkah baiknya jika kita mengujinya terlebih dahulu. Agar bisa diuji kita deklarasikan dulu kode END agar program dapat berjalan dan mengeluarkan output yang sesuai. Pada END ini kita melakukan pengecekan if dengan kondisi jika error_input == 1 yang berarti error, maka program ini dipaksa berhenti dengan menggunakan exit.

Pada bagian END ini juga dideklarasikan kondisi-kondisi yang akan user inputkan (instruksi a, b, c, d, atau e) menggunakan if. Pada bagian pengujian awal ini, dikarenakan baru instruksi “a” yang programnya sudah bisa dijalankan, maka kita deklarasikan if dengan kondisi pilihan user “a” maka akan mengeluarkan output jumlah penumpang yang ada.

<img width="633" height="139" alt="ss4" src="https://github.com/user-attachments/assets/1bc89a43-9727-4bc2-bcf0-e80a4ccb066e" />

Saat melakukan uji coba instruksi “a” saya mengalami kendala yaitu jumlah penumpang tidak tertulis di outputnya, seperti gambar dibawah ini

<img width="472" height="51" alt="ss5" src="https://github.com/user-attachments/assets/794bbe1b-0e39-418e-ba70-8fa86292dbab" />

Setelah diperhatikan lagi, kesalahan saya di kode yaitu adanya typo pada penulisan variabel. Setelah variabel di ganti dan kode dijalankan kembali, output yang keluar sebagai berikut

<img width="462" height="55" alt="ss6" src="https://github.com/user-attachments/assets/5b191e40-5bc7-4ac8-98fc-d444632c390c" />

Selanjutnya kita memulai pembuatan kode untuk instruksi “b”. Karena kita ingin fokus pada bagisn gerbong kita deklarasikan terlebih dahulu dengan memasukan $4 (kolom ke 4) ke dalam variabel gerbong. Selanjutnya kita deklarasikan list_gerbong[gerbong] = 1 agar kita mengetahui ada berapa jenis gerbong di data tersebut. Pada bagian ini, array list_gerbong dengan isi variabel gerbong akan membaca kolom $4 dan setiap perbedaan nama (misal gerbong 1, gerbong 2) akan didefinisikan dengan 1.

<img width="386" height="52" alt="ss7" src="https://github.com/user-attachments/assets/1911c889-0afd-42ac-8b50-6e471a523818" />

Setelah jumlah jenis gerbong telah diketahui, kita membuat kode untuk user input b. Pertama, kita membuat variabel jumlah_gerbong dengan isian 0 sebagai inisialisasi awal. Lalu dikakukan for looping dengan dimana ini akan melakukan pengecekan pada variabel list_gebong, setiap ditemukan perbedaan gerbong, variabel jumlah_gerbong akan di increment 1. 

<img width="476" height="101" alt="ss8" src="https://github.com/user-attachments/assets/18b0c958-53c2-411e-a2e8-8e5d1315f2a4" />

Selanjutnya untuk pemrogaman dengan user input c kita fokus pada nama dan juga umur penumpang yaitu pada kolom $1 dan $2. Untuk tiap data di  $1 kita masukan ke dalam variabel nama, dan tuntuk $2 dimasukan ke variabel usia. Setelah itu kita melakukan pengecekan if jika kondisi usia lebih besar dari usia tertua (saat awal masih didefinisikan dgn 0) maka data dari usia akan dimasukan ke dalam variabel usia tertua dan nama yang berada pada baris yang sama akan dimasukan ke dalam variabel namatertua yang nantinya akan ditampilkan di output. Pengecekan ini akan dilakukan hingga baris terakhir data.

<img width="390" height="100" alt="KETINGGALAN" src="https://github.com/user-attachments/assets/2ceaf1c6-db44-45c6-951b-27feb187a2fa" />

Untuk output dari instruksi ini akan dijalankan dengan kode print yang ada pada bagian END

<img width="671" height="45" alt="ss9" src="https://github.com/user-attachments/assets/e98db1dc-f386-4569-92e2-547247784b04" />


Saat melakukan input pada bagian instruksi c ini terjadi syntax error sebagai berikut

<img width="476" height="43" alt="ss10" src="https://github.com/user-attachments/assets/f36543e5-32c9-4c7d-adee-2acfab792480" />

<img width="467" height="47" alt="ss11" src="https://github.com/user-attachments/assets/4b7de74f-5858-499f-beca-40e1d140a95c" />

Setelah diamati terjadi kesalahan dalam menuliskan kurung kurawal ({}) dan juga tanda sama dengan yang kurang pada bagian opsi c yang menyebabkan kebingungan dalam pembacaan program. Setelah diperbaiki berikut output yang ditunjukan.

<img width="538" height="55" alt="ss12" src="https://github.com/user-attachments/assets/d4acbc38-9d51-45cb-b284-a52583d93695" />


Karena kode sebelumnya sudah berhasil dijalankan, selanjutnya untuk instruksi input d, pertama kita hitung terlebih dahulu total usia dari seluruh penumpang agar kita bisa menghitung rata-ratanya dengan cara mendeklarasikan variabel total_usia yang akan menyimpan nilai jumlah usia. 

<img width="317" height="17" alt="ss13" src="https://github.com/user-attachments/assets/72fc379f-fb33-41fb-a85b-6cbd62e221e1" />

Setelah itu, kita buat kondisi else if untuk opsi d yang didalamnya terdapat rumus untuk menghitung rata-rata usia nya yang disimpan dalam variabel rata_rata. Lalu disini juga terdapat kode untuk melakukan output yang diinginkan.

<img width="476" height="60" alt="ss14" src="https://github.com/user-attachments/assets/d97a5ecc-4ef1-4fd7-acce-cf7c385cd65c" />

Terakhir, untuk opsi “e” yang meminta untuk menghitung jumlah penumpang yang ada di kelas bisnis, kita tetapkan dulu variabel kelas berisi $3 karena kita fokus pada kelas dari keretanya. Setelah itu, kita melakukan pengecekan jika isi dari variabel kelas sama dengan “Business” maka akan dilakukan increment count_business sebanyak 1. Lalu, pada bagian END akan dilakukan print atau kode untuk melakukan output dari jumlah penumpang yang berada di kelas bisnis.

<img width="422" height="58" alt="ss15" src="https://github.com/user-attachments/assets/662773e5-ec6d-41e0-846a-ca2db99976d4" />

<img width="473" height="41" alt="ss16" src="https://github.com/user-attachments/assets/289c9f9c-cf78-4e62-a63d-d2de00fa7a05" />

## Soal 3
Langkah awal untuk soal ketiga ini adalah membuat folder soal_3 yang didalamnya terdapat sub folder kost_slebew.sh, data, log, rekap, dan juga sampah.

<img width="422" height="145" alt="ss1" src="https://github.com/user-attachments/assets/02ffa5f0-ff6c-4649-877d-6e9085264a1b" />

Setelah itu didalam program kost_slebew.sh kita buat dulu file-file yang dibutuhkan dan dimasukan ke masing-masing folder sesuai dengan ketentuan dengan menuliskan kode touch. Ini berguna untuk menyimpan data-data yang diperlukan nantinya.

<img width="476" height="143" alt="ss2" src="https://github.com/user-attachments/assets/966ae335-fab4-41ff-8425-cbe51af05d7b" />

Selanjutnya, karena ini adalah program yang akan terus berjalan sebelum user input 7 yaitu keluar dari program, kita menggunakan perulangan while selama berjalannya program. Selain itu, agar menghindari kebingungan user, setiap kali loop mengulang dari atas, terminal akan dibersihkan dengan menuliskan clear diawal. Lalu , diidalam perulangan kita menampilkan menu input yang akan user pilih sebanyak 7 pilihan. Dari beberapa opsi tersebut user diminta untuk menginput opsi dari 1-7. Lalu input dari user ini akan dimasukan ke dalam variabel opsi yang selanjutnya akan dilakukan pengecekan input. Isi dari variabel ini akan di cek dengan if dengan kondisi jika opsinya selain angka 1-7 maka akan keluar output perintah agar user input angka 1-7 dan akan kembali ke tampilan menu awal

<img width="932" height="288" alt="ss3" src="https://github.com/user-attachments/assets/fef0da61-f967-404e-928a-427ae500a8c5" />

Selanjutnya untuk menjalankan program sesuai input dari user (yang berarti kondisi selain error input), dideklarasikan case dengan kondisi sesuai dengan yang ada di menu. Diawal ini saya menuliskan case berupa gambaran terlebih dahulu, yang nantinya akan diisi oleh pemanggilan fungsi dari masing-masing instruksi yang akan dibuat. Pada case nomor 7 program akan berhenti dan akan keluar dari menu utama menggunakan exit 0.

<img width="365" height="380" alt="ss4" src="https://github.com/user-attachments/assets/2f03c30b-bd8a-4c6c-a353-f86bd4b6b09e" />

Langkah selanjutnya kita membuat fungsi tambah penghuni yang didalamnya meminta user untuk menginput nama, kamar, harga, tanggal masuk, dan status awal. Pertama-tama jkita memulai dengan meminta user untuk menginput nama dengan read dan memasukan input ke dalam variabel nama. Selanjutnya user juga diminta untuk menginput kamar yang ingin mereka huni dan inputan akan dimasukan ke variabel kamar_baru, akan tetapi dilakukan pengecekan terlebih dahulu, apakah kamar yang ingin dihuni sudah terisi atau belum dengan cara membuat variabel cek_kamar yang berfungsi untuk membaca file csv dengan awk. File csv ini terdapat beberapa data yang dipisahkan menggunakan koma, maka dari itu kita menyertakan -F ‘,’ agar program membaca tanda kome sebagai pemisah. Setelah itu kita membuat variabel k sebagai tempat menyimpan data dari variabel kamar_baru yang digunakan untuk melakukan perbandingan antara data kamar baru dengan yang sudah ada (di file csv), jika terdapat kamar yang sama maka akan dilakukan print nama kamar tersebut dan ini disimpan ke dalam variabel cek_kamar, jika tidak ada kamar yang sama maka variabel ini tidak ada isinya. Setelah itu, dilakukan pengecekan if yang apabila variabel cek_kamar ada isinya (yang berarti terdapat kamar yang sama) maka akan mengeluarkan output peringatan untuk user, dan pemrograman akan diberhentikan dengan return dan balik ke menu awal.

<img width="580" height="247" alt="ss5" src="https://github.com/user-attachments/assets/bd6f1a68-d0e8-47e0-b8b7-6bcdd9c8b55a" />

Selanjutnya, untuk input dari angka juga harus dilakukan pengecekan apakah itu berupa angka dan angka positif atau bukan. Untuk itu kita menggunakan if yang membandingkan apabila variabel harga_sewa kurang dari atau sama dengan 0, maka akan keluar output peringatan dan program akan dihentikan menggunaakan return dan kembali ke menu awal.

<img width="452" height="84" alt="ss6" src="https://github.com/user-attachments/assets/790e24ad-9e55-48dc-b252-e61634cd7c8d" />

Setelah masukan harga sewa, user diminta menginput tanggal sewa dengan format YYYY-MM-DD dan tidak boleh melebihi hari ini (masa depan). Pertama, input user akan dimasukan ke dalam variabel tanggal, setelah itu untuk mengetahui hari ini tanggal berapa kita memanggil date dengan format YYYY-MM-DD. Karena format asli dari date adalah hari-bulan-tanggal-jam-tahun, maka kita persingkat menggunakan “+” yang artinya kita meminta program membaca date dimulai dari tahun (%Y) dan diikuti oleh bulan (%m) dan tanggal (%d). Setelah itu waktu hari ini akan disimpan  di dalam variabel hari_ini. Selanjutnya karena kita tidak memperbolehkan user menginput tanggal masa depan yang artinya tanggal input nilainya lebih besar dari tanggal hari ini, maka kita menggunakan cara matetatika biasa yang membandingkan apakah tanggal input lebih besar daripada hari ini. Jadi, kita membuat program membaca inputan tanpa tanda strip (-) terlebih dahulu dengan cara membuat variabel tanggal_input yang berisi variabel tanggal yang dimanipulasi menggunakan “tr” yang menerjemahkan $tanggal menjadi -d (delete) tanda strip. Lalu tanggal_input tersebut dibandingkan dengan hari_ini, jika tanggal input lebih besar dari tanggal hari ini maka itu adalah masa depan.

<img width="452" height="127" alt="ss7" src="https://github.com/user-attachments/assets/6977cdd8-ff6a-4725-a695-5f1418e06cf7" />

Selanjutnya kita meminta user menginput status awal (aktif/ menunggak). Input dari user akan dimasukan ke variabel status yang nantinya akan dilakukan pengecekan apakah input user benar berupa status aktif atau menunggak. Jika input salah maka akan diberi peringatan dan program akan kembali ke menu utama.

<img width="450" height="106" alt="ss8" src="https://github.com/user-attachments/assets/55ae8c29-bc99-4951-9c02-6df3518c59f9" />

Terakhir, jika data sudah lengkap maka akan dimasukan ke file penghuni.csv dengan cara menyertakan >> data/penghuni.csv. Disini kita tidak menggunakan tanda > (hanya satu) karena jika menggunakan tanda itu maka data sebelumnya akan terhapus dan digantikan dengan data yang baru, sedangkan tanda “>>” akan menambahkan data baru di paling bawah setelah data terakhir, sehingga tida menghapus data yang sudah ada.

<img width="419" height="40" alt="ss sblm 9" src="https://github.com/user-attachments/assets/8bf61b67-254f-4e19-ac69-1a4feb948f3a" />

Selanjutnya kita cantumkan fungsi tambah_penghuni ke case nomor 1 dan akan melakukan percobaan untuk fungsi tambah_penghuni.

<img width="174" height="75" alt="ss9" src="https://github.com/user-attachments/assets/7b475304-7253-440e-88d0-196ba028ea31" />

Saat saya mencoba menginput huruf pada bagian harga sewa, program menampilkan kode error akan tetapi program masih berlanjut untuk meminta tanggal masuk. Jika program berlanjut itu akan membuat datanya tidak rapi karena kesalahan di harga sewa. Maka dari itu, pada bagian pengecekan harga sewa ditambahkan variabel bukan_angka yang berisi data variabel harga_sewa yang diubah dengan men-delete angka 0-9 agar variabel bukan_angka ini berisi selain angka. Nantinya akan dicek apakah variabel bukan_angka ini ada isinya atau tidak, jika ada berarti itu bukan merupakan angka sehingga user akan diberi peringatan selama 2 detik  dan program akan masuk ke manu utama lagi.

<img width="383" height="89" alt="ss10" src="https://github.com/user-attachments/assets/50704740-c8c8-4e2d-ad5b-bbb1750cb105" />

<img width="473" height="176" alt="ss11" src="https://github.com/user-attachments/assets/7dc1f206-ab22-4f7d-9842-423834a83f4d" />

Untuk opsi selanjutnya yaitu opsi hapus penghuni, pastinya kita meminta input nama penghuni yang ingin dihapus dan disimpan ke variabel nama_hapus. Lalu untuk mengetahui apakah ada nama yang sama, kita buat terlebih dahulu variabel data_hapus yang akan membaca file penghuni.csv khususnya pada $1 yaitu nama penghuni. Jika variabel tersebut ada isinya berarti terdapat nama yang sama pada file, jikia tidak ada yang sama maka variabel tersebut tidak ada isinya. Selanjutnya akan dicek apakah variabel data_hapus ada isinya atau tidak menggunakan “-z”, jika ada maka akan kembali ke menu awal.

<img width="416" height="191" alt="ss sblm 12" src="https://github.com/user-attachments/assets/b2624a5b-1b1e-436b-b302-e3c3f2e66715" />

Jika input user sesuai maka kita membuat variabel tanggal_hapus yang isinya tanggal penghapusan penghuni dengan format tahun-bulan-tanggal. Selanjutnya isi dari variabel data_hapus dan tanggal penghapusan akan dipindahkan kedalam file sampah/history_hapus.csv. Setelah itu, karena kita tidak bisa menghapus langsung datanya, kita menggunakan perintah awk. Ini akan membaca file penghuni.csv dan sarong semua penghuni yang namanya tidak sama dengan input user. Lalu data penghuni yang tidak dihapus tersebut disimpan kedalam file data/temp.csv dan kita gunakan perintah mv untuk  menimpa file penghuni.csv yang lama dengan file temp.csv. Dengan begitu, data penghuni yang ingin dihapus telah terhapus.

<img width="811" height="140" alt="ss12" src="https://github.com/user-attachments/assets/477fcee3-5e92-474a-9f9c-552455ad04b2" />

Selanjutnya untuk opsi tampilkan penghuni kita lakukan dulu pengecekan apakah sudah ada data penghuni di kost itu dengan kondisi if. Operator -s apakah data/penghuni.csv ada isinya, dan tanda seru untuk menandakan tidak, jadi juka data masih kosong maka akan mengeluarkan output belum ada penghuni. Jika tidak memenuhi kondisi if diatas maka else melakukan perannya sebagai mencetak header tabel untuk ditampilkan. Selanjutnya ada cat digunakan untuk baca isi file penghuni.csv dan menggabungkan dengan file bayangan temp_tabel.csv yang terdapat header didalamnya. Lalu pada perintah column terdapat parameter -t untuk mencetak teks serta tabel secara otomatis dan -s ‘,’ untuk memberitahu tiap kolom dipisahkan dengan tanda koma. Jika tabel sudah ditampilkan, file bayangan tadi dihapus menggunakan rm agar tidak meninggalkan sampah pada sistem.

<img width="509" height="280" alt="ss15" src="https://github.com/user-attachments/assets/4c94eb33-f748-426d-9c96-e42918d04294" />

Untuk fungsi ubah status user diminta menginput nama penghuni terlebih dahulu dan program akan melakukan pencarian status menggunakan awk. Karena nama penghuni berada di kolom pertama, maka kita menggunakan $1, jika nama penghuni ditemukan awk akan mengambil teks pada kolom kelima ($5) agar disimpan kedalam variabel status_lama. Lalu dilakukan pengecekan terlebih dahulu apakah variabel status_lama kosong, jika benar artinya data penghuni tidak ditemukan, dan akan kembali ke menu utama dengan return. Setelah penghuni ditemukan maka nama dan status lama penghuni akan ditampilkan lalu user diminta untuk input status barunya dan akan dilakukan validasi apakah user benar input aktif atau menunggak, jika user salah menginput maka akan ditampilkan peringatan error dan akan kembali ke menu utama. Selanjutnya awk berfungsi untuk memodifikasi datanya, didalamnya kita membuat variabel n yang berisi nama_update yaitu nama yang diinput oleh user dan s untuk status barunya. Parameter BEGIN disini sangat penting karena berisi OFS=”,” yang menandakan data dipisahkan dengan koma meskipun ketika awk sedang ,erakit ulang. Logikanya adalah: jika kolom pertama sama dengan nama target ($1 == n), maka ubah nilai kolom kelima menjadi status baru ($5 = s). Lalu perintah print $0 untuk mencetak kembali baris tersebbut.

<img width="889" height="407" alt="ss16" src="https://github.com/user-attachments/assets/125e502b-7641-499b-ae30-d613f86ae465" />

Pada opsi cetak keuangan kita validasi dulu menggunakan if memastikan file penghuni.csv tidak kosong, jika kosong maka akan kembali ke menu utama menggunakan return. Jika datanya ada isinya maka keta gunakan perintah awk yang didalamnya terdapat parameter -F ‘,’ sebagai tanda kolom dipisahkan dengan koma. Lalu awk akan melakukan perulangan pada tiap baris data, disini awk mengambil $3 dan dijumlahkan dengan isi dari variabel total. Setelah seluruh baris selesai dibaca (END),hasil penjumlahan tersebut dicetak dan disimpan ke dalam variabel total_pendapatan. Selanjutnya ada variabel waktu_cetak yang menyimpan waktu saat melakukan cetak laporan keuangan dengan format tahun-bulan-tanggal serta jam-menit-dan detiknya. Terakhir hasil dari rekap akan ditampilkan dan dimasukan kedalam file rekap/laporan_bulanan.txt dengan operator “>>”

<img width="598" height="305" alt="ss17" src="https://github.com/user-attachments/assets/1393aba7-d83a-434d-a749-de933bb8a9b6" />

Terakhir untuk opsi kelola corn saya baru menyelesaikan sampai dengan tampilan dan inputan user karena keterbatasan waktu. Disini input user disimpan kedalam variabel opsi_corn.


<img width="344" height="131" alt="ss18" src="https://github.com/user-attachments/assets/f89ffa79-d9e8-4205-bf95-5aa02317911d" />

Untuk menjalankan tiap fungsi, kita memasukan fungsi-fungsi yang sudah ada kedalam tiap case sesuai dengan fungsinya.

<img width="256" height="357" alt="ss19" src="https://github.com/user-attachments/assets/891656af-e8f0-4bba-9e13-9c39018524f9" />
