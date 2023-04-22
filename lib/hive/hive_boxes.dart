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
import 'package:todo/models/models.dart';

class HiveBoxes {
  const HiveBoxes._();
  static final pref = Hive.box(HiveBoxNames.pref);
  static final todoBox = Hive.box<Todo>(HiveBoxNames.todo);
  static final categoryBox = Hive.box<CategoryModel>(HiveBoxNames.category);
}

class HiveBoxNames {
  const HiveBoxNames._();
  static const String pref = 'pref';
  static const String todo = 'todo';
  static const String category = 'category';
}
