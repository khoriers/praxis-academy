Haly yang saya pelajari pada pertemuan ini yakni :

1.Future adalah sebuah class yang merepresentasikan sebuah hasil dari asynchronous operation dan memiliki dua kemungkinan state, uncompleted atau completed. jika sebuah asynchronous operation sukses di jalankan maka hasilnya ada dua juga, kalau bukan complete with a value pasti complete with an error.

2.Async adalah sebuah keyword yang digunakan untuk membuat sebuah class atau method dari yang semula synchronous programming menjadi asynchronous programming dengan menambahkan async sebelum tag body nya. Class atau function yang terdapat kata kunci async maka class atau function tersebut akan berjalan synchronously sebelum await pertama terpanggil.

3.Await adalah kata kunci yang ada pada dart yang hanya bisa di terapkan pada asynchronous class ataupun method. Await ini memiliki fungsi untuk menunda proses eksekusi program ke baris selanjutnya sampai proses yang dilakukan selesai terlebih dahulu.

4.Stream adalah sebuah class yang memungkinkan kita mendapatkan potongan-potongan data satu per satu tanpa harus menunggu semua data nya terkumpul. Tidak seperti class future yang mereturn sekali ketika operasinya telah selesai, class stream dapat mereturn masing-masing data secara individu dan mengeksekusi operasi selanjutnya.

5.Listen merupakan sebuah method yang memungkinkan sebuah stream untuk mendapatkan setiap perubahan yang terjadi, sehingga dari perubahan-perubahan yang terjadi tersebut bisa di lakukan suatu aksi tertentu.

6.Yield Kata kuncu yield sama seperti halnya kata kunci return, bedanya ialah jika return di eksekusi maka operasi nya selesai dan valuenya di kembalikan ke class / method yang memanggilnya, sedangkan yield ketika dieksekusi dia mengembalikan valuenya tetapi tidak menghentikan proses yang terjadi di tempat dia dieksekusi.
