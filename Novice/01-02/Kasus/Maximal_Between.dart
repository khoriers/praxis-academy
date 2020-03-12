main() {
  var Random = [10, 9, 3, 4, 2, 1, 7, 89];
  print(CariMax(Random, 0, Random.length));
}

CariMax(listangka, nilai, panjangbaris) {
  var max = nilai;
  for (var posisi = nilai + 1; posisi < panjangbaris; posisi++) {
    if (listangka[posisi] > listangka[max]) {
      max = posisi;
    }
  }
  return max;
}
