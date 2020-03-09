import 'dart:async';

main () async {
  print('Mulai');
  await for (int angka in methoddName()){
    print(angka);
  }
  print('Selesai');
}

    Stream <int> methoddName() async* {
      yield 1;
      yield 2;
      yield 3;
    }

