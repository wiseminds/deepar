import 'package:flutter_test/flutter_test.dart';
import 'package:deepar_ios/deepar_ios.dart';
import 'package:deepar_ios/deepar_ios_platform_interface.dart';
import 'package:deepar_ios/deepar_ios_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockDeeparIosPlatform 
    with MockPlatformInterfaceMixin
    implements DeeparIosPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final DeeparIosPlatform initialPlatform = DeeparIosPlatform.instance;

  test('$MethodChannelDeeparIos is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelDeeparIos>());
  });

  test('getPlatformVersion', () async {
    DeeparIos deeparIosPlugin = DeeparIos();
    MockDeeparIosPlatform fakePlatform = MockDeeparIosPlatform();
    DeeparIosPlatform.instance = fakePlatform;
  
    expect(await deeparIosPlugin.getPlatformVersion(), '42');
  });
}
