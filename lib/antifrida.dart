import 'package:flutter/services.dart';

class Security {
  static const platform = MethodChannel('com.example.security/frida');

  static Future<bool> isFridaDetected() async {
    try {
      final bool result = await platform.invokeMethod('detectFrida');
      return result;
    } on PlatformException catch (e) {
      print("Failed to detect Frida: ${e.message}");
      return false;
    }
  }
}
