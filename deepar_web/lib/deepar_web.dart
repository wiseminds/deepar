
import 'deepar_web_platform_interface.dart';

class DeeparWeb {
  Future<String?> getPlatformVersion() {
    return DeeparWebPlatform.instance.getPlatformVersion();
  }
}
