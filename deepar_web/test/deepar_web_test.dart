import 'package:flutter_test/flutter_test.dart';
import 'package:deepar_web/deepar_web.dart';
import 'package:deepar_web/deepar_web_platform_interface.dart';
import 'package:deepar_web/deepar_web_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockDeeparWebPlatform 
    with MockPlatformInterfaceMixin
    implements DeeparWebPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final DeeparWebPlatform initialPlatform = DeeparWebPlatform.instance;

  test('$MethodChannelDeeparWeb is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelDeeparWeb>());
  });

  test('getPlatformVersion', () async {
    DeeparWeb deeparWebPlugin = DeeparWeb();
    MockDeeparWebPlatform fakePlatform = MockDeeparWebPlatform();
    DeeparWebPlatform.instance = fakePlatform;
  
    expect(await deeparWebPlugin.getPlatformVersion(), '42');
  });
}
