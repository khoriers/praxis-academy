import '../lib/Kasus.dart' as Kasus;

void main(List<String> arguments) {

  print('Hello world: ${Kasus.calculate()}!');



  var name = 'Voyager I';

    var year = 1977;

    var antennaDiameter = 3.7;

    var flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];

    var image = {

      'tags': ['saturn'],

      'url': '//path/to/saturn.jpg'

};

    print(image);

    print(name);



            if (year >= 2001) {

          print('21st century');

        } else if (year >= 1901) {

          print('20th century');

        }



        for (var object in flybyObjects) {

          print(object);

        }



        for (int month = 1; month <= 12; month++) {

          print(month);

        }



        while (year < 2016) {

          year += 1;

        }



        int fibonacci(int n) {

        if (n == 0 || n == 1) return n;

        return fibonacci(n - 1) + fibonacci(n - 2);

        }



       var result = fibonacci(20);

       print(result);



       flybyObjects.where((name) => name.contains('turn')).forEach(print);



         // This is a normal, one-line comment.



        /// This is a documentation comment, used to document libraries,

        /// classes, and their members. Tools like IDEs and dartdoc treat

        /// doc comments specially.



        /* Comments like these are also supported. */

}