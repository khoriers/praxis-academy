main() {
  var Random = [1, 11, 21, 2, 22, 32, 3, 5];

  for (var i = 0; i < Random.length - 2; i++) {
    var indexMin = Random[i];

    for (var j = i; i < Random.length - 1; i++) {
      if (Random[j] < Random[indexMin]) {
        indexMin = j;
      }
    }

    if (indexMin != i) {
      var temp = Random[i];

      Random[i] = Random[indexMin];

      Random[indexMin] = temp;
    }
  }

  print(Random);
}
