import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'deepar_ios_method_channel.dart';

abstract class DeeparIosPlatform extends PlatformInterface {
  /// Constructs a DeeparIosPlatform.
  DeeparIosPlatform() : super(token: _token);

  static final Object _token = Object();

  static DeeparIosPlatform _instance = MethodChannelDeeparIos();

  /// The default instance of [DeeparIosPlatform] to use.
  ///
  /// Defaults to [MethodChannelDeeparIos].
  static DeeparIosPlatform get instance => _instance;
  
  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [DeeparIosPlatform] when
  /// they register themselves.
  static set instance(DeeparIosPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
