import 'dart:io';

// membuat fungsi luas persegi
int luasPersegi(int sisi){
  return sisi * sisi;
}

main(){
  print("--- Program luas persegi ---");
  stdout.write("Input panjang sisi: ");
  int s = int.parse(stdin.readLineSync());

  // memanggil fungsi
  int hasil = luasPersegi(s);

  print("Luas: $hasil");
}