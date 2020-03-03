import 'dart:io';

main() {
  print("OPERATOR PROGRAM");

  stdout.write("Nilai x: ");
  double x = double.parse(stdin.readLineSync());
  stdout.write("Nilai y: ");
  double y = double.parse(stdin.readLineSync());

  double hasil;

  // operator penjumlahan
  hasil = x + y;
  print("$x + $y = $hasil");
  
  // operator pengurangan
  hasil = x - y;
  print("$x - $y = $hasil");
  
  // operator perkalian
  hasil = x * y;
  print("$x * $y = $hasil");
  
  // operator pembagian
  hasil = x / y;
  print("$x / $y = $hasil");
  
  // operator sisa bagi
  hasil = x % y;
  print("$x % $y = $hasil");

}