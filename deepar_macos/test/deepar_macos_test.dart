import 'package:flutter_test/flutter_test.dart';
import 'package:deepar_macos/deepar_macos.dart';
import 'package:deepar_macos/deepar_macos_platform_interface.dart';
import 'package:deepar_macos/deepar_macos_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockDeeparMacosPlatform 
    with MockPlatformInterfaceMixin
    implements DeeparMacosPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final DeeparMacosPlatform initialPlatform = DeeparMacosPlatform.instance;

  test('$MethodChannelDeeparMacos is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelDeeparMacos>());
  });

  test('getPlatformVersion', () async {
    DeeparMacos deeparMacosPlugin = DeeparMacos();
    MockDeeparMacosPlatform fakePlatform = MockDeeparMacosPlatform();
    DeeparMacosPlatform.instance = fakePlatform;
  
    expect(await deeparMacosPlugin.getPlatformVersion(), '42');
  });
}
