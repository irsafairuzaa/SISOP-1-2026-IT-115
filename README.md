Untuk tahap awal pengerjaan praktikum ini, langkah yang saya lakukan pertama kali yaitu membuat folder pada terminal ubuntu dengan nama folder sisop_1_2026_IT_115 dengan isi file  KANJ.sh dan passenger.csv didalamnya. Akan tetapi saya ada kesalahan dalam penamaan folder sehingga saya menggantinya dengan nama soal_1.

(foto pergantian nama file)

Selanjutnya didalam KANJ.sh  saya mendeklarasikan BEGIN dimana ini adalah kode yang dieksekusi sekali sebelum membaca input. Dalam BEGIN ini terdapat FS = “,” dimana ini merupakan variabel untuk membaca bahwa kolom di dalam passanger.sh dipisahkan oleh tanda koma.

Setelah kita tau bahwa baris itu dipisahkan olh koma, kita mendeklarasikan argumen yang nantinya dipilih oleh user (a, b, c, d, atau e) akan dimasukan ke dalam variabel opsi, ini digunakan agar tidak perlu menulis ARGV[2] berulang kali pada kode nya. Di sini kkita menggunakan ARGV[2] untuk menyimpan kata yang diketik dalam terminal saat jalanin perintah.

Selanjutnya dilakukan pengecekan menggunakan if dengan kondisi jika isi dari variabel opsi bukan a, b, c, d, atau e maka program akan berhenti dan langsung loncat ke blok END yang ditandai dengan exit. Selain itu, error_input = 1 menandakan bahwa perintah yang dijalankan true yang artinya error.



Setelah itu, pada bagian luar BEGIN kita menentukan kondisi atau pada kolom mana program akan mulai membaca data passenger.csv. Kita tentukan NR > 1 error_input != 1 yang artinya data akan mulai dibaca dimulai baris kedua karena di baris pertama hanya berisi header dan dibaca hanya jika input tidak bernilai 1 atau tidak terjadi error. Setelah mengetahui mana kolom yang akan dibaca, kita mendeklarasikan count_passenger++ untuk menghitung jumlah penumpang dalam data. Disini kita melakukan increment operator yang jumpahnya akan selalu bertambah 1 setiap ia membaca 1 baris.



Karena kita sudah membuat satu instruksi yang bisa dijalankan, alangkah baiknya jika kita mengujinya terlebih dahulu. Agar bisa diuji kita deklarasikan dulu kode END agar program dapat berjalan dan mengeluarkan output yang sesuai. Pada END ini kita melakukan pengecekan if dengan kondisi jika error_input == 1 yang berarti error, maka program ini dipaksa berhenti dengan menggunakan exit.

Pada bagian END ini juga dideklarasikan kondisi-kondisi yang akan user inputkan (instruksi a, b, c, d, atau e) menggunakan if. Pada bagian pengujian awal ini, dikarenakan baru instruksi “a” yang programnya sudah bisa dijalankan, maka kita deklarasikan if dengan kondisi pilihan user “a” maka akan mengeluarkan output jumlah penumpang yang ada.



Saat melakukan uji coba instruksi “a” saya mengalami kendala yaitu jumlah penumpang tidak tertulis di outputnya, seperti gambar dibawah ini



Setelah diperhatikan lagi, kesalahan saya di kode yaitu adanya typo pada penulisan variabel. Setelah variabel di ganti dan kode dijalankan kembali, output yang keluar sebagai berikut


Selanjutnya kita memulai pembuatan kode untuk instruksi “b”. Karena kita ingin fokus pada bagisn gerbong kita deklarasikan terlebih dahulu dengan memasukan $4 (kolom ke 4) ke dalam variabel gerbong. Selanjutnya kita deklarasikan list_gerbong[gerbong] = 1 agar kita mengetahui ada berapa jenis gerbong di data tersebut. Pada bagian ini, array list_gerbong dengan isi variabel gerbong akan membaca kolom $4 dan setiap perbedaan nama (misal gerbong 1, gerbong 2) akan didefinisikan dengan 1.



Setelah jumlah jenis gerbong telah diketahui, kita membuat kode untuk user input b. Pertama, kita membuat variabel jumlah_gerbong dengan isian 0 sebagai inisialisasi awal. Lalu dikakukan for looping dengan dimana ini akan melakukan pengecekan pada variabel list_gebong, setiap ditemukan perbedaan gerbong, variabel jumlah_gerbong akan di increment 1. 



Selanjutnya untuk pemrogaman dengan user input c kita fokus pada nama dan juga umur penumpang yaitu pada kolom $1 dan $2. Untuk tiap data di  $1 kita masukan ke dalam variabel nama, dan tuntuk $2 dimasukan ke variabel usia. Setelah itu kita melakukan pengecekan if jika kondisi usia lebih besar dari usia tertua (saat awal masih didefinisikan dgn 0) maka data dari usia akan dimasukan ke dalam variabel usia tertua dan nama yang berada pada baris yang sama akan dimasukan ke dalam variabel namatertua yang nantinya akan ditampilkan di output. Pengecekan ini akan dilakukan hingga baris terakhir data.



Untuk output dari instruksi ini akan dijalankan dengan kode print yang ada pada bagian END



Saat melakukan input pada bagian instruksi c ini terjadi syntax error sebagai berikut




Setelah diamati terjadi kesalahan dalam menuliskan kurung kurawal ({}) dan juga tanda sama dengan yang kurang pada bagian opsi c yang menyebabkan kebingungan dalam pembacaan program. Setelah diperbaiki berikut output yang ditunjukan.



Karena kode sebelumnya sudah berhasil dijalankan, selanjutnya untuk instruksi input d, pertama kita hitung terlebih dahulu total usia dari seluruh penumpang agar kita bisa menghitung rata-ratanya dengan cara mendeklarasikan variabel total_usia yang akan menyimpan nilai jumlah usia. 



Setelah itu, kita buat kondisi else if untuk opsi d yang didalamnya terdapat rumus untuk menghitung rata-rata usia nya yang disimpan dalam variabel rata_rata. Lalu disini juga terdapat kode untuk melakukan output yang diinginkan.



Terakhir, untuk opsi “e” yang meminta untuk menghitung jumlah penumpang yang ada di kelas bisnis, kita tetapkan dulu variabel kelas berisi $3 karena kita fokus pada kelas dari keretanya. Setelah itu, kita melakukan pengecekan jika isi dari variabel kelas sama dengan “Business” maka akan dilakukan increment count_business sebanyak 1. Lalu, pada bagian END akan dilakukan print atau kode untuk melakukan output dari jumlah penumpang yang berada di kelas bisnis.



