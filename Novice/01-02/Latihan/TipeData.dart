void main(){
    // membaut variabel dengan tipe data

    //String tipe data untuk kata-kata/huruf-huruf
    String nama = "Khori";
    
    //numbers, dibedakan menjadi 2 yakni int dan double, int digunakan untuk angka pasti, sedangkan double untuk yg berkoma
    int umur = 23;
    double tinggi = 180.43;
    //Boolean, Di Dart menyediakan bawaan Boolean ini. Di tipe data boolean ini agak unik nilai/value hanya ada dua saja yaitu true dan false.
    bool Kuliah = true;

   var alamat = "Yogyakarta";

   //Bagian runes
    Runes input = new Runes(' \u{1f605} '); 

    // mencetak variabel
    print("Nama saya $nama. Umur $umur tahun. Tinggi sekitar $tinggi cm.");
    print('Kuliah: $Kuliah');
    print('Alamat: $alamat');
    print(new String.fromCharCodes(input)); 

}