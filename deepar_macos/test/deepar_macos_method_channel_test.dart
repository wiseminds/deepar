import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:deepar_macos/deepar_macos_method_channel.dart';

void main() {
  MethodChannelDeeparMacos platform = MethodChannelDeeparMacos();
  const MethodChannel channel = MethodChannel('deepar_macos');

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
