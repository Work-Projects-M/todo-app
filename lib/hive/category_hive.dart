/*

  Created by: Bakhromjon Polat
  Created on: Apr 22 2023 13:41:47
  Github:   https://github.com/BahromjonPolat
  Leetcode: https://leetcode.com/BahromjonPolat/
  LinkedIn: https://linkedin.com/in/bahromjon-polat
  Telegram: https://t.me/BahromjonPolat

  Documentation: 

*/

import 'package:hive/hive.dart';
import 'package:todo/hive/hive.dart';
import 'package:todo/models/models.dart';

class CategoryDb {
  const CategoryDb._();
  static final Box<CategoryModel> box = HiveBoxes.categoryBox;
  static Future<void> putAll(List<CategoryModel> categories) async {
    Map<String, CategoryModel> entries = {};
    for (var category in categories) {
      entries[category.id] = category;
    }
    await box.putAll(entries);
  }

  static CategoryModel getCategoryById(String? id) =>
      box.get(id) ?? const CategoryModel();

  static Future<void> increment(String categoryId) async {
    CategoryModel category = getCategoryById(categoryId);
    int count = category.count;
    box.put(category.id, category.copyWith(count: count + 1));
  }

  static Future<void> decrement(String categoryId) async {
    CategoryModel category = getCategoryById(categoryId);
    int count = category.count;
    box.put(category.id, category.copyWith(count: count - 1));
  }
}
