import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'deepar_web_platform_interface.dart';

/// An implementation of [DeeparWebPlatform] that uses method channels.
class MethodChannelDeeparWeb extends DeeparWebPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('deepar_web');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
