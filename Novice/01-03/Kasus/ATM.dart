import 'dart:io';



double saldo = 0;

String backToMenu;



void main()

{

  int pin = 123; 

  int inputPin = 0;

  int loginAttempt = 3;

    

  do

  {

    print('#AUTENTIKASI PIN');

    print('\n*JAGALAH KERAHASIAAN PIN ANDA');

    stdout.write('-> SILAHKAN MASUKAN PIN ANDA ');//fungsi write adl untuk menampilkan teks ke console “apa adanya”.

    inputPin = int.parse(stdin.readLineSync());//fungsi readLineSync() adalah fungsi untuk membaca input dari keyboard. 

    if(inputPin == pin )

    {

      menuATM();

      break;

    }

    else

      loginAttempt--;

      print('* PIN YANG ANDA MASUKAN SALAH. SILAHKAN MASUKAN KEMBALI');

      print('* KESEMPATAN ANDA SISA $loginAttempt\n');//loginAttempt atau limit login

    }

    while(loginAttempt >= 1 && loginAttempt <= 3);

  print('\n\n\nTERIMA KASIH TELAH MENGGUNAKAN ATM');

}



void menuATM()

{

  int inputMenu = 0;

  do

  {

    print('\n');

    print('#MENU ATM SETOR TARIK TUNAI');

    print('1. TARIK TUNAI');

    print('2. SETOR TUNAI');

    print('3. CEK SALDO');

    print('4. KELUAR');



    stdout.write('\n-> PILIH MENU: ');

    inputMenu = int.parse(stdin.readLineSync());



    switch(inputMenu)

    {

      case 1:

        tarikTunai();  

        break;

      case 2:

        setorTunai();

        break;

      case 3:

        cekSaldo();

        break;

    }

  } while(inputMenu < 0 && inputMenu > 3);

}





///FITUR ATM//

void tarikTunai()

{

  double tarik = 0;

  print('\n#TARIK TUNAI');

  stdout.write("-> MASUKAN NOMINAL UANG YANG AKAN ANDA AMBIL ");

  tarik = double.parse(stdin.readLineSync());

  //EXCEPTION MESSAGE

  if(saldo < tarik)

  {

    print('*MAAF, SISA SALDO ANDA Rp. $saldo TIDAK CUKUP UNTUK PENARIKAN TUNAI Rp. $tarik');

    menuATM();

  }

  else if(saldo > tarik)

  {

    saldo -= tarik;

    print('*SISA SALDO ANDA Rp. $saldo');

    menuATM();

  }

}



void setorTunai()

{

  double setor = 0;

  print('\n#SETOR TUNAI');

  stdout.write('-> MASUKAN NOMINAL UANG TUNAI ');

  setor = double.parse(stdin.readLineSync()); 

  saldo += setor;

  print('*SISA SALDO ANDA MENJADI Rp. $saldo');

  

  print('\n\nINGIN MELANJUTKAN TRANSAKSI LAIN?');

  print('- TEKAN y JIKA INGIN MELANJUTKAN TRANSAKSI LAIN');

  print('- TEKAN n JIKA TIDAK INGIN MELANJUTKAN TRANSAKSI LAIN');

  stdout.write('->PILIH: ');

  backToMenu = stdin.readLineSync();

  if(backToMenu == 'y' || backToMenu == 'Y')

  {

    menuATM();

  }

}



void cekSaldo()

{

  print('\n#CEK SALDO');

  print('SISA SALDO ANDA Rp. $saldo');

  print('\n\nINGIN MELANJUTKAN TRANSAKSI LAIN?');

  print('- TEKAN y JIKA INGIN MELANJUTKAN TRANSAKSI LAIN');

  print('- TEKAN n JIKA TIDAK INGIN MELANJUTKAN TRANSAKSI LAIN');

  stdout.write('->PILIH: ');

  backToMenu = stdin.readLineSync();

  if(backToMenu == 'y' || backToMenu == 'Y')

  {

    menuATM();

  }

}