import 'package:deepar_platform_interface/deepar_platform_interface.dart';

class DeeparIos implements DeeparPlatform {
  @override
  Future<String?> getPlatformVersion() {
    return DeeparPlatform.instance.getPlatformVersion();
  }
}
