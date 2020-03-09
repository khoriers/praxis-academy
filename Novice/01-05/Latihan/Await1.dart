import 'dart:async';


class Employee {
  int id;
  String firstName;
  String lastName;

  Employee(this.id, this.firstName, this.lastName);

}

void main() async {
  print("getting employee...");
  var x = await getEmployee(33);
  print("Got back ${x.firstName} ${x.lastName} with id# ${x.id}");
}



Future<Employee> getEmployee(int id) async {
  // Simulasikan seperti apa penundaan panggilan layanan dengan menunda 2 detik  
  await Future<Employee>.delayed(const Duration(seconds: 2));
  // dan kemudian kembalikan karyawan - mari kita berpura-pura mengambil ini dari database 🙂
  var e = new Employee(id, "Joe", "Coder");
  return e;

}