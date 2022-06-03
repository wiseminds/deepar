// In order to *not* need this ignore, consider extracting the "web" version
// of your plugin as a separate package, instead of inlining it in the same
// package as the core of your plugin.
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html show window;

import 'package:deepar_platform_interface/deepar_platform_interface.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';


/// A web implementation of the DeeparWebPlatform of the DeeparWeb plugin.
class DeeparWebWeb extends DeeparPlatform {
  /// Constructs a DeeparWebWeb
  DeeparWebWeb();

  static void registerWith(Registrar registrar) {
    DeeparPlatform.instance = DeeparWebWeb();
  }

  /// Returns a [String] containing the version of the platform.
  @override
  Future<String?> getPlatformVersion() async {
    final version = html.window.navigator.userAgent;
    return version;
  }
}
