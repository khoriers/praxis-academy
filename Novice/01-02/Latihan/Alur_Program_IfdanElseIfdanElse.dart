import 'dart:io';

main(){
  print("*** Program Penilaian Mahasiswa Praxis Academy ***");

  stdout.write("Inputkan nilai: ");
  int nilai = int.parse(stdin.readLineSync());

  String grade;

  if(nilai >= 90) grade = "A+ (Amat Sangat Baik)";
  else if(nilai >= 80) grade = "A (Amat Baik)";
  else if(nilai >= 70) grade = "B+ (Baik)";
  else if(nilai >= 60) grade = "B (Cukup Baik)";
  else if(nilai >= 50) grade = "C+ (Cukup)";
  else if(nilai >= 40) grade = "C (Kurang Cukup)";
  else if(nilai >= 30) grade = "D (Buruk)";
  else if(nilai >= 20) grade = "E (Sangat Buruk)";
  else grade = "F (Tidak Lulus)";

  print("Grade: $grade");
  
}