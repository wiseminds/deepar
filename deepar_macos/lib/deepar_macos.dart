
import 'deepar_macos_platform_interface.dart';

class DeeparMacos {
  Future<String?> getPlatformVersion() {
    return DeeparMacosPlatform.instance.getPlatformVersion();
  }
}
