
import 'deepar_android_platform_interface.dart';

class DeeparAndroid {
  Future<String?> getPlatformVersion() {
    return DeeparAndroidPlatform.instance.getPlatformVersion();
  }
}
