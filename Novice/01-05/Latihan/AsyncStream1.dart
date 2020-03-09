import 'dart:async';

main () {
  methoddName().listen((angka) {
    print(angka);
  });
}

    Stream <int> methoddName() async* {
      yield 1;
      yield 2;
      yield 3;
    }

/*Untuk mendapatkan hasil data Stream yang dikembalikan method diatas, maka kita menggunakan method listen, 
listen ini akan dijalankan apabila ada data yang dikembalikan menggunakan yield tadi.*/