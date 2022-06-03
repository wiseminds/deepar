import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'deepar_macos_method_channel.dart';

abstract class DeeparMacosPlatform extends PlatformInterface {
  /// Constructs a DeeparMacosPlatform.
  DeeparMacosPlatform() : super(token: _token);

  static final Object _token = Object();

  static DeeparMacosPlatform _instance = MethodChannelDeeparMacos();

  /// The default instance of [DeeparMacosPlatform] to use.
  ///
  /// Defaults to [MethodChannelDeeparMacos].
  static DeeparMacosPlatform get instance => _instance;
  
  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [DeeparMacosPlatform] when
  /// they register themselves.
  static set instance(DeeparMacosPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
