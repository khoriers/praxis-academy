class Lingkaran {
  double pi = 3.14;
  double r;

  Lingkaran (this.r);

  void setJariJari(double r) {
      this.r = r;
  }

  double getKeliling () {
    return 2 * pi * r;
  }

  double getLuas() {
    return pi*(r *r);

  }
}

void main () {
      Lingkaran lingkaran = Lingkaran (17);
      print('Keliling = ${lingkaran.getKeliling()}cm');
      print('Luas = ${lingkaran.getLuas()}cm');

}
