class Karyawan {
  String nama ;
  String kantor; //Properties Field

  Karyawan (this.nama, this.kantor); //Constructornya

  getInfo() {
      return "Nama: " + nama + ", kantor: " + kantor;
  }

}

void main () {
  Karyawan staff = new Karyawan ("Joko", "VII");
  print (staff.nama);
  print (staff.kantor);

  print(staff.getInfo());
}