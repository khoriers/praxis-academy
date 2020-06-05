import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Battery Lever App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static const platformBaterry = const MethodChannel('samples.flutter.dev/battery');
  static const platformName = const MethodChannel('samples.flutter.dev/name');
  String _batteryLevel = 'Unkonw battery level';
  String _platformName = 'on ?';

  Future<void> _getPlatformInfo() async {
    String batteryLevel, name;
    try {
      final int resultBattery = await platformBaterry.invokeMethod('getBatteryLevel');
      final String resultName = await platformName.invokeMethod('getPlatformName');
      batteryLevel = 'Battery level at $resultBattery%';
      name = 'on $resultName';
    } on PlatformException catch (e) {
      batteryLevel = 'Failed to get battery level: \'${e.message}\' ';
    }

    setState(() {
      _batteryLevel = batteryLevel;
      _platformName = name;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Battery Level',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.normal,
              fontSize: 20.0,
              color: Colors.white),
        ),
        centerTitle: true,
        elevation: 5.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            RaisedButton(
                child: Text('Get Battery Level'),
                onPressed: () {
                  _getPlatformInfo();
                }),
            Text(
              '$_batteryLevel $_platformName',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 30.0,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}
