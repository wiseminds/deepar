import 'package:deepar_platform_interface/deepar_method_channel.dart';
import 'package:deepar_platform_interface/deepar_platform_interface.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:deepar_android/deepar_android.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockDeeparAndroidPlatform
    with MockPlatformInterfaceMixin
    implements DeeparPlatform {
  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final DeeparPlatform initialPlatform = DeeparPlatform.instance;

  test('$MethodChannelDeepar is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelDeepar>());
  });

  test('getPlatformVersion', () async {
    DeeparAndroid deeparAndroidPlugin = DeeparAndroid();
    MockDeeparAndroidPlatform fakePlatform = MockDeeparAndroidPlatform();
    DeeparPlatform.instance = fakePlatform;

    expect(await deeparAndroidPlugin.getPlatformVersion(), '42');
  });
}
