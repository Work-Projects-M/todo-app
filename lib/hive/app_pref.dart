/*

  Created by: Bakhromjon Polat
  Created on: Apr 22 2023 10:23:11
  Github:   https://github.com/BahromjonPolat
  Leetcode: https://leetcode.com/BahromjonPolat/
  LinkedIn: https://linkedin.com/in/bahromjon-polat
  Telegram: https://t.me/BahromjonPolat

  Documentation: 

*/

import 'package:hive/hive.dart';
import 'package:todo/hive/hive.dart';

class AppPref {
  const AppPref._();
  static final Box box = HiveBoxes.pref;

  static Future<void> setBool({
    required String key,
    required bool value,
  }) async {
    await box.put(key, value);
  }

  static bool getBool(String key) => box.get(key) ?? false;
}

class PrefKeys {
  const PrefKeys._();
  static const String started = 'started';
}
