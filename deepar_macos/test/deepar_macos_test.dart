import 'package:deepar_platform_interface/deepar_method_channel.dart';
import 'package:deepar_platform_interface/deepar_platform_interface.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:deepar_macos/deepar_macos.dart'; 
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockDeeparMacosPlatform 
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
    DeeparMacos deeparMacosPlugin = DeeparMacos();
    MockDeeparMacosPlatform fakePlatform = MockDeeparMacosPlatform();
    DeeparPlatform.instance = fakePlatform;
  
    expect(await deeparMacosPlugin.getPlatformVersion(), '42');
  });
}
