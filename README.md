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

## Soal 2
