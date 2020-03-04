// Variabel instance adalah variabel yang dideklarasikan di dalam kelas,
// Setiap objek dari kelas tersebut mendapat salinan baru dari variabel instance,
// Di posting ini, kita akan belajar bagaimana variabel instance bekerja dan cara yang berbeda untuk menginisialisasi mereka

class Student{
  var name; //Tipe data String
  var age; //Tipe data Num
}

main() {
  var alex = new Student();
  alex.name = "Alex";
  alex.age = 19; // Variable Instances

  print("Name : ${alex.name}, Age : ${alex.age}");
}