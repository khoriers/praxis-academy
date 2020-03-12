main() {
  List list = [2, 8, 1, 6]; // List should not be empty.
  print(list.reduce((curr, next) => curr > next ? curr : next)); // 8 --> Max
  print(list.reduce((curr, next) => curr < next ? curr : next)); // 1 --> Min
}
