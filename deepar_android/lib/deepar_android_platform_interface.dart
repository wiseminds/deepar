import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'deepar_android_method_channel.dart';

abstract class DeeparAndroidPlatform extends PlatformInterface {
  /// Constructs a DeeparAndroidPlatform.
  DeeparAndroidPlatform() : super(token: _token);

  static final Object _token = Object();

  static DeeparAndroidPlatform _instance = MethodChannelDeeparAndroid();

  /// The default instance of [DeeparAndroidPlatform] to use.
  ///
  /// Defaults to [MethodChannelDeeparAndroid].
  static DeeparAndroidPlatform get instance => _instance;
  
  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [DeeparAndroidPlatform] when
  /// they register themselves.
  static set instance(DeeparAndroidPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
