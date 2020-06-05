import 'dart:math';
import 'package:flutter/foundation.dart';

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
