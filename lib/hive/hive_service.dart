/*

  Created by: Bakhromjon Polat
  Created on: Apr 22 2023 10:10:23
  Github:   https://github.com/BahromjonPolat
  Leetcode: https://leetcode.com/BahromjonPolat/
  LinkedIn: https://linkedin.com/in/bahromjon-polat
  Telegram: https://t.me/BahromjonPolat

  Documentation: 

*/

import 'package:hive_flutter/hive_flutter.dart';
import 'package:todo/hive/hive.dart';
import 'package:todo/models/models.dart';

class HiveService {
  const HiveService._();

  static Future<void> init() async {
    await Hive.initFlutter();
    Hive.registerAdapter(TodoAdapter());
    Hive.registerAdapter(CategoryAdapter());

    await Hive.openBox(HiveBoxNames.pref);
    await Hive.openBox<Todo>(HiveBoxNames.todo);
    await Hive.openBox<CategoryModel>(HiveBoxNames.category);
  }
}
