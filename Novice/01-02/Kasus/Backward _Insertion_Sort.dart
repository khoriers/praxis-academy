main() {
  var Random = [10, 9, 3, 4, 2, 1, 7, 15, 23];
  var start;
  for (start = Random.length - 1; start >= 0; start--) {
    var key = Random[start];
    var start2 = start + 1;
    while (start2 < Random.length && key > Random[start2]) {
      Random[start2 - 1] = Random[start2];
      start2 = start2 + 1;
    }
    Random[start2 - 1] = key;
  }
  print(Random);
}
