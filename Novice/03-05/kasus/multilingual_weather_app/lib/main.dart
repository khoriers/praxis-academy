import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:multilingual_weather_app/weather.dart';
import 'package:provider/provider.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'localization.dart';

void main() => runApp(
    ChangeNotifierProvider(create: (context) => Weather(), child: MyApp()));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateTitle: (BuildContext context) =>
          Localization.of(context).getTitle,
      localizationsDelegates: [
        const LocalizationDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [const Locale('en'), const Locale('id')],
      debugShowCheckedModeBanner: false,
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
          Localization.of(context).getTitle,
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
              hintText: Localization.of(context).getHint,
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
