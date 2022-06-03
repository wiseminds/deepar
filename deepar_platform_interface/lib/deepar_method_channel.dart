import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'deepar_platform_interface.dart';

/// An implementation of [DeeparPlatform] that uses method channels.
class MethodChannelDeepar extends DeeparPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('com.wiseminds.deepar');

  @override
  Future<String?> getPlatformVersion() async {
    final version =
        await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
