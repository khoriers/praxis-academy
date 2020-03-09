List backwardInsertionSort(List numbers) {
  for (int i = numbers.length - 1; i >= 0; --i) {
    var key = numbers[i];
    var j = i + 1;
    while (j < numbers.length && key > numbers[j]) {
      numbers[j - 1] = numbers[j];
      j++;
    }
    numbers[j - 1] = key;
  }
  return numbers;
}