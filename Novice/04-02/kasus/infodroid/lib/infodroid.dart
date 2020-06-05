import 'dart:async';

import 'package:flutter/services.dart';

class Infodroid {
  static const MethodChannel _channel =
      const MethodChannel('infodroid');

  static Future<String> get platformInfo async {
    final String version = await _channel.invokeMethod('getPlatformInfo');
    return version;
  }
}
