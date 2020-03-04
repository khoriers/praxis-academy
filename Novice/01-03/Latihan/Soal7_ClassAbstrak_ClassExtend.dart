abstract class BangunDatar {
  void info();
  double luas();
}

class Segitiga extends BangunDatar {
  int alas;
  int tinggi;
  
  Segitiga(this.alas, this.tinggi);
  
  void info() {
    print("Segitiga");
  }
  
  double luas() {
    return (alas*tinggi)/2;
  }
}


class PersegiPanjang extends BangunDatar {
  int panjang;
  int lebar;
  
  PersegiPanjang(this.panjang, this.lebar);
  
  void info() {
    print("Persegi Panjang");
  }
  
  double luas() {
    return (panjang*lebar).toDouble(); // casting dari integer ke double
  }
}


void main() {
   Segitiga s3 = Segitiga(2,5);
   s3.info();
   print(s3.luas());
   
   PersegiPanjang pp = PersegiPanjang(5,2);
   pp.info();
   print(pp.luas());
}