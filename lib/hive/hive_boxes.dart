/*

  Created by: Bakhromjon Polat
  Created on: Apr 22 2023 10:08:47
  Github:   https://github.com/BahromjonPolat
  Leetcode: https://leetcode.com/BahromjonPolat/
  LinkedIn: https://linkedin.com/in/bahromjon-polat
  Telegram: https://t.me/BahromjonPolat

  Documentation: 

*/

import 'package:hive/hive.dart';

class HiveBoxes {
  const HiveBoxes._();
  static final pref = Hive.box(HiveBoxNames.pref);
}

class HiveBoxNames {
  const HiveBoxNames._();
  static const String pref = 'pref';
}
