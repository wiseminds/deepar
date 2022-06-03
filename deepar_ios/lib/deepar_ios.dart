
import 'deepar_ios_platform_interface.dart';

class DeeparIos {
  Future<String?> getPlatformVersion() {
    return DeeparIosPlatform.instance.getPlatformVersion();
  }
}
