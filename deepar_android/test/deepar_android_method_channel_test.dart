import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:deepar_android/deepar_android_method_channel.dart';

void main() {
  MethodChannelDeeparAndroid platform = MethodChannelDeeparAndroid();
  const MethodChannel channel = MethodChannel('deepar_android');

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
