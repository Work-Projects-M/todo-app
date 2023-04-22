/*

  Created by: Bakhromjon Polat
  Created on: Apr 22 2023 11:08:12
  Github:   https://github.com/BahromjonPolat
  Leetcode: https://leetcode.com/BahromjonPolat/
  LinkedIn: https://linkedin.com/in/bahromjon-polat
  Telegram: https://t.me/BahromjonPolat

  Documentation: 

*/

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:todo/hive/hive.dart';

part 'category.g.dart';
part 'category.freezed.dart';

@freezed
@HiveType(typeId: HiveTypes.category, adapterName: HiveAdapters.categoryAdapter)
class CategoryModel with _$CategoryModel {
  const factory CategoryModel({
    @HiveField(0) @Default("") String id,
    @HiveField(1) @Default("") String name,
    @HiveField(2) @Default("") String icon,
    @HiveField(3) @Default(0) int color,
    @HiveField(4) @Default(0) int count,
  }) = _Category;

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);
}
