import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:deepar_ios/deepar_ios_method_channel.dart';

void main() {
  MethodChannelDeeparIos platform = MethodChannelDeeparIos();
  const MethodChannel channel = MethodChannel('deepar_ios');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
