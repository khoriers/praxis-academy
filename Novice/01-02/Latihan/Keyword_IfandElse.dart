import 'dart:io';

main(){
  print("Login Akun PRAXIS ACADEMY");
  stdout.write("Password: ");
  String password = stdin.readLineSync().trim();

  // cek password yang diinputkan
  if(password == "Praxis123"){
    print("WELCOME ");
  } else {
    print("Maaf password anda salah");
  }
}