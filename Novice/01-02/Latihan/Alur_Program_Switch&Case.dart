import 'dart:io';

main(){
  print("~~~ Jadwal KP Praxis ~~~");
  stdout.write("Input hari: ");
  String hari = stdin.readLineSync().trim().toLowerCase();

  String quote;

  switch(hari){
    case "Senin": {
      quote = "Belajar Materi dan Pembahasan";
      break;
    }
    case "Selasa": {
      quote = "Praktikum";
      break;
    }
    case "Rabu": {
      quote = "Praktikum";
      break;
    }
    case "kamis": {
      quote = "Menyelesaikan Project";
      break;
    }
    default: {
      quote = "Hari yang anda masukan salah!";
    }
  }

  print(quote);
}