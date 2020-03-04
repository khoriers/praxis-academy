class Karyawan {
  String nama ;
  String kantor; //Properties Field

  Karyawan (this.nama, this.kantor); //Constructornya

  getInfo() {
      return "Nama: " + nama + ", kantor: " + kantor;
  }

}

void main () {
  Karyawan karyawan = new Karyawan ("Joko", "VII");
  print (karyawan.nama);
  print (karyawan.kantor);

  print(karyawan.getInfo());
}