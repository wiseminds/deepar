import 'package:deepar_platform_interface/deepar_method_channel.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:deepar/deepar.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:deepar_platform_interface/deepar_platform_interface.dart';

class MockDeeparPlatform
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
    Deepar deeparPlugin = Deepar();
    MockDeeparPlatform fakePlatform = MockDeeparPlatform();
    DeeparPlatform.instance = fakePlatform;

    expect(await deeparPlugin.getPlatformVersion(), '42');
  });
}
