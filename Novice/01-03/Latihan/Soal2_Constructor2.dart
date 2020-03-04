void main () {
    Buah c1 = new Buah.namedConst ('Semangka'); //dengan parameter
    Buah c3 = new Buah.namedConst('Apel');
    Buah c4 = new Buah(); //tanpa parameter 
    
class Buah { //deklarasi konstruktor
  Buah () {
    print ('Ini memanggil konstruktor non parameter');
  }
  Buah.namedConst(String buah) {
    print('Cetak namabuah : ${buah}');
  }
}