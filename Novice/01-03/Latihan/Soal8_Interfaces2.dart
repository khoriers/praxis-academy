class A {
  void hello() {
    print("Class A Hello");
  }
}

class B {
  void horas() {
    print("Class B Horas");
  }
}

class C extends A implements B {
  void hello() {
    print("Class C Hello");
  }
}

class D extends B implements A {
  // harus diimplementasikan
  void hello() {
    print("Class D Hello");
  }
}

void main() {
  // jika diperhatikan kita tidak menciptakan objek dari kelas A
  // walalpun kita membuat variabel c dari A
  A c = C();
  c.hello(); // mencetak Class C Hello
  c.horas(); // error: karena kita mendeklarasikan c dengan kelas A, sementara metode horas ada di kelas B
  
  D d = D();
  d.horas(); // mencetak Class B Horas, karena ini adalah metode yang diwariskan dari kelas B
  d.hello(); // mencetak Class D Hello
}