import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'deepar_android_platform_interface.dart';

/// An implementation of [DeeparAndroidPlatform] that uses method channels.
class MethodChannelDeeparAndroid extends DeeparAndroidPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('deepar_android');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
