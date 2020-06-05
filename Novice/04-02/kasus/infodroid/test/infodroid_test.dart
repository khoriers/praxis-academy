import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:infodroid/infodroid.dart';

void main() {
  const MethodChannel channel = MethodChannel('infodroid');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformInfo', () async {
    expect(await Infodroid.platformInfo, '42');
  });
}
