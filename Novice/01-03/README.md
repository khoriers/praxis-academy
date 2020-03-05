Pada Pertemuan Ke-3 ini,saya mempelajari beberapa ilmu, yakni :
1. Classes: Classes adalah blue print dari sebuah object dalam OOP programming language, dalam dart kita bisa mendeklarasikan sebuah class dengan menggunakan kata kunci class yang diikuti oleh nama classnya.
  Contoh : class Lingkaran {}
2.Named constructor: Named constructor digunakan apabila kita menginginkan field yang berbeda dalam suatu class melalui deklarasi dan inisialisasi sebuah object.
  Contoh : 
  
 3. Inheritance atau pewarisan adalah salah satu prinsip utama dalam OOP programming language, dalam dart kita bisa menerapkan inheritance dengan menggunakan kata kunci extends maupun implement setelah nama class dan diikuti oleh parent class nya.
  Contoh : class Segitiga extends BangunDatar {} , dan juga seperti class A implements B {}
 
 4. Methods berguna untuk menyelesaikan sebuah pekerjaan atau tugas yang spesifik dalam OOP programming language, untuk membuat sebuah method kita hanya perlu memberikan return type yang diikuti oleh nama methodnya. Perbedaan Method dengan Function yaknni
 JIKALAU METHOD LETAKNYA DI DALAM CLASS
 JIKALAU FUNCTION LETAKNYA DI LUAR CLASS
    Contoh : 
  class PersegiPanjang extends BangunDatar { INI CLASS!!!!
  int panjang;
  int lebar;
  
  PersegiPanjang(this.panjang, this.lebar);
  
  void info() { INI METHOD!!!!!
    print("Persegi Panjang");
  }
  
  double luas() { INI METHOD !!!!!!
    return (panjang*lebar).toDouble(); // casting dari integer ke double
  }
}

 5.Getter and setter ini berfungsi untuk memodifikasi dan mengambil suatu nilai dari private variabel dalam sebuah class, dengan cara ini dimungkinkan untuk melakukan perubahan pada variabel walaupun variabel tersebut memilik private modifier.
 Contoh : String get s_nama { YANG INI GET!!!
    return nama;
  }
  
  dan
  
  void set s_nama (String nama) {
    this.nama=nama;
  }
