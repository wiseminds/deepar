import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'deepar_ios_platform_interface.dart';

/// An implementation of [DeeparIosPlatform] that uses method channels.
class MethodChannelDeeparIos extends DeeparIosPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('deepar_ios');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
