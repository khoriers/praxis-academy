class Person{
  String _name;
  var _address;

  String getName(){
    return this._name;
  }

  void setName(String name){
    this._name = name;
  }

  String getAddress(){
    return this._address;
  }

  void setAddress(String address){
    this._address = address;
  }
}

// fungsi main
main(){
  var dian = new Person();
  dian.setName("Dian");
  dian.setAddress("Lombok");

  print("Nama: ${dian.getName()}");
  print("Alamat: ${dian.getAddress()}");
}