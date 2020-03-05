// penyedia mixin.

class Waktu {

  DateTime sekarang = DateTime.now();

  

  void cetakWaktuSekarang() {

    print(sekarang);

  }

}



abstract class Kue {

  String nama;

  Kue(this.nama);

}



class Bolu extends Kue with Waktu {

  Bolu(String nama) : super(nama);

}



class Donat extends Kue {

  Donat(String name) : super(name);

}



class Martabak with Waktu {

}



void main() {

  Bolu bl = Bolu("Bolu Pisang");

  Donat dn = Donat("Donat Kentang");

  bl.cetakWaktuSekarang();

  Martabak mb = Martabak();

  mb.cetakWaktuSekarang();

}