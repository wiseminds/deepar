import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'deepar_web_method_channel.dart';

abstract class DeeparWebPlatform extends PlatformInterface {
  /// Constructs a DeeparWebPlatform.
  DeeparWebPlatform() : super(token: _token);

  static final Object _token = Object();

  static DeeparWebPlatform _instance = MethodChannelDeeparWeb();

  /// The default instance of [DeeparWebPlatform] to use.
  ///
  /// Defaults to [MethodChannelDeeparWeb].
  static DeeparWebPlatform get instance => _instance;
  
  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [DeeparWebPlatform] when
  /// they register themselves.
  static set instance(DeeparWebPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
