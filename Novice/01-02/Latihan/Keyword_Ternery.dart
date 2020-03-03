import 'dart:io';

main(){
  print("Apakah rumahmu di Sleman?");
  stdout.write("Jawab (Y/T): ");
  String jawab = stdin.readLineSync();

  // menggunakan operator ternary sebagai ganti if/else
  var hasil = (jawab == 'Y') ? "dekat dengan Praxis Academy" : "jauh dari Praxis Academy";

  print("Selamat tempat tinggal kamu $hasil");
}