import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'deepar_macos_platform_interface.dart';

/// An implementation of [DeeparMacosPlatform] that uses method channels.
class MethodChannelDeeparMacos extends DeeparMacosPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('deepar_macos');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
