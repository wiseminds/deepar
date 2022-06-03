import 'package:flutter_test/flutter_test.dart';
import 'package:deepar_android/deepar_android.dart';
import 'package:deepar_android/deepar_android_platform_interface.dart';
import 'package:deepar_android/deepar_android_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockDeeparAndroidPlatform 
    with MockPlatformInterfaceMixin
    implements DeeparAndroidPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final DeeparAndroidPlatform initialPlatform = DeeparAndroidPlatform.instance;

  test('$MethodChannelDeeparAndroid is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelDeeparAndroid>());
  });

  test('getPlatformVersion', () async {
    DeeparAndroid deeparAndroidPlugin = DeeparAndroid();
    MockDeeparAndroidPlatform fakePlatform = MockDeeparAndroidPlatform();
    DeeparAndroidPlatform.instance = fakePlatform;
  
    expect(await deeparAndroidPlugin.getPlatformVersion(), '42');
  });
}
