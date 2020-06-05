class Karyawan {
  String nama ;
  String kantor; //Properties Field

  Karyawan (this.nama, this.kantor);

  getInfo() {
      return "Nama: " + nama + ", kantor: " + kantor;
  } //Constructornya

}

void main () {
  Karyawan staff = new Karyawan ("Joko", "VII");
  print (staff.nama);
  print (staff.kantor);

  print(staff.getInfo());
}