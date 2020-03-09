import 'dart:async';

main () {
  Future getNumber() async {
  return 10;
}

}

/*import 'dart:async';

main () {
    Stream <int> methodName() async* {
      yield 1;
      yield 2;
      yield 3;
    }
}
*/

/*Pada Future kita menggunakan return untuk mengembalikan nilai, sedangkan pada Stream kita menggunakan yield untuk mengembalikan nilainya.
Apabila menggunakan return maka secara otomatis fungsi tersebut akan berhenti karena selain untuk mengembalikan nilai, return juga untuk menghentikan fungsi/method.
Sedangkan saat menggunakan yield, maka nilai akan dikembalikan dan program akan tetap berjalan sampai tidak ada lagi nilai yang dikembalikan menggunakan yield.
Itulah dua perbedaan mendasar antara penggunaan Future dan Stream, dimana kita bisa mengambil kesimpulan bahwa Stream sifatnya mengembalikan data seperti aliran, 
dia akan terus mengalir(mengembalikan data) sampai tidak ada lagi yang melewati aliran tersebut baru fungsinya akan terhenti.
*/