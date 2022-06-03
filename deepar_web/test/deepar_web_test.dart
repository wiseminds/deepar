import 'package:deepar_platform_interface/deepar_method_channel.dart';
import 'package:deepar_platform_interface/deepar_platform_interface.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:deepar_web/deepar_web.dart'; 
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockDeeparWebPlatform 
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
    DeeparWeb deeparWebPlugin = DeeparWeb();
    MockDeeparWebPlatform fakePlatform = MockDeeparWebPlatform();
    DeeparPlatform.instance = fakePlatform;
  
    expect(await deeparWebPlugin.getPlatformVersion(), '42');
  });
}
