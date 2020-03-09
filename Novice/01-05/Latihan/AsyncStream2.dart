import 'dart:async';

main() {
  methodName().listen((angka) {
    print(angka);
  });
}

Stream <int> methodName() async* {
  yield 1;
  yield 2;
  yield 3;
  yield* methodName2();
  yield 8;
  yield 9;
  yield 10;
}

Stream<int> methodName2() async* {
  yield 4;
  yield 5;
  yield 6;
  yield 7;
}


/*Selanjutkan kita akan menggunakan yield*, yield dan yield* keduanya sama-sama untuk mengembalikan data, 
yang membedakannya adalah yield untuk mengembalikan 1 data, 
sedangkan yield* untuk mengembalikan banyak data yang biasanya data tersebut dari method Stream juga.
Untuk membuktikannya kita bisa buat method baru lagi yang mengembalikan data berupa Stream, 
lalu kita panggil melalui method sebelumnya menggunakan yield*. */