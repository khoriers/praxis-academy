import 'dart:math';
import 'package:flutter/foundation.dart';
import 'dart:developer' as developer;

class Weather extends ChangeNotifier {
  String _cityName = 'Jogja';
  double _temperature = 20 + Random().nextInt(15) + Random().nextDouble();

  String get cityName => _cityName;
  double get temperature => _temperature;

  set cityName(String cityName) {
    _cityName = cityName;
    developer.log('set city name', name: 'my.app.category');
    notifyListeners();
  }

  set temperature(double temperature) {
    _temperature = temperature;
    developer.log('set temperature', name: 'my.other.category');
    notifyListeners();
  }
}
