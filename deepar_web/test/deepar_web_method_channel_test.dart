import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:deepar_web/deepar_web_method_channel.dart';

void main() {
  MethodChannelDeeparWeb platform = MethodChannelDeeparWeb();
  const MethodChannel channel = MethodChannel('deepar_web');

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
