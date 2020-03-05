void main () {
  var data = new List (3);
  data[0] = 'Jakarta';
  data[1] = 'Bandung';
  data[2] = 'Yogyakarta';
  print(data);


  var data2 = ['Jogja', 'Surabaya', 'Magelang'];
  print(data2); //Varnya bisa diganti List kok


  var data3 = {'Name' : 'Khori', 'Alamat' : 'Purbalingga', 'Hobby' :  'Game',
                'Age' : '20'}; //Map
  data3['Job'] = 'Freelance';
  data3['Email'] = 'syahrulkhori@gmail.com';
  print(data3);


 var data4 = Map();
  data4['Nama'] = 'Ana';
  data4 ['Alamat'] = 'Lubuklinggau';
  data4 ['Age'] = '14 tahun';
  print(data4);

Set data5 = Set();
data5.add(100);
data5.add(5);
data5.add(9);
data5.add(10);
print(data5);

}