import 'dart:async';

main() async {
  print ('Mulai');
  await hitungAngka();
  print('Selesai');
}

Future hitungAngka() async {
  print(1);
  print(2);
  print(3);

}

/*Ada contoh kasus dimana kita ingin menunggu hingga proses asinkron tersebut selesai baru lanjut ke kode berikutnya,
ini biasanya apabila kita menjalankan fungsi asinkron didalam fungsi asinkron, 
seperti berikut adalah contoh apabila menggunakan Future : */