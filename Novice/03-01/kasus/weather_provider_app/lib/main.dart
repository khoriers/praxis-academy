import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(
    ChangeNotifierProvider(create: (context) => Weather(), child: MyApp()));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Bloc Demo',
      theme: ThemeData(primaryColor: Colors.blue),
      home: WeatherPage(),
    );
  }
}

class WeatherPage extends StatefulWidget {
  @override
  _WeatherPageState createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Fake Weather App',
        ),
        elevation: 0,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Consumer<Weather>(
              builder: (context, weather, _) => Text(
                weather.cityName,
                style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.w700),
              ),
            ),
            Consumer<Weather>(
              builder: (context, weather, _) => Text(
                weather.temperature.toStringAsFixed(1).toString(),
                style: TextStyle(fontSize: 80.0),
              ),
            ),
            CityInputField(),
          ],
        ),
      ),
    );
  }
}

class Weather extends ChangeNotifier {
  String _cityName = 'Jogja';
  double _temperature = 20 + Random().nextInt(15) + Random().nextDouble();

  String get cityName => _cityName;
  double get temperature => _temperature;

  set cityName(String cityName) {
    _cityName = cityName;
    notifyListeners();
  }

  set temperature(double temperature) {
    _temperature = temperature;
    notifyListeners();
  }
}

class CityInputField extends StatefulWidget {
  const CityInputField({Key key}) : super(key: key);

  @override
  _CityInputFieldState createState() => _CityInputFieldState();
}

class _CityInputFieldState extends State<CityInputField> {
  TextEditingController textEditingController = TextEditingController();

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50.0),
      child: Consumer<Weather>(
        builder: (context, weather, _) => TextField(
          controller: textEditingController,
          onSubmitted: (value) {
            submitCityName(value, weather);
          },
          textInputAction: TextInputAction.search,
          decoration: InputDecoration(
              hintText: 'Enter a city',
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(12.0)),
              suffixIcon: Icon(Icons.search)),
        ),
      ),
    );
  }

  submitCityName(String value, Weather weather) {
    weather.cityName = value;
    weather.temperature = 20 + Random().nextInt(15) + Random().nextDouble();
  }
}
