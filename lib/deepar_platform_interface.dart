import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'deepar_method_channel.dart';

abstract class DeeparPlatform extends PlatformInterface {
  /// Constructs a DeeparPlatform.
  DeeparPlatform() : super(token: _token);

  static final Object _token = Object();

  static DeeparPlatform _instance = MethodChannelDeepar();

  /// The default instance of [DeeparPlatform] to use.
  ///
  /// Defaults to [MethodChannelDeepar].
  static DeeparPlatform get instance => _instance;
  
  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [DeeparPlatform] when
  /// they register themselves.
  static set instance(DeeparPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
