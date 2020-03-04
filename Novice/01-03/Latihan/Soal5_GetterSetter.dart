class Student {
  final String name;
  num age;

  Student(this.name);

  set setAge(num age) => this.age = age;
  num get getAge => this.age;
}

main() {
  var alex = Student("Bob");
  alex.setAge = 10;
  print("Age : ${alex.getAge}");
}