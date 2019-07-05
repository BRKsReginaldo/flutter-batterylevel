import 'package:flutter/services.dart';

const kBatteyLevelChannel = 'com.japronto/battery';

class BatteryLevel {
  static const platform = const MethodChannel(kBatteyLevelChannel);

  Future<int> getBatteryLevel() async {
    try {
      final int result = await platform.invokeMethod('getBatteryLevel');
      return result;
    } on PlatformException catch (e) {
      print(e.toString());
      return null;
    }
  }
}
