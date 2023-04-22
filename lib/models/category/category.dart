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

part 'category.g.dart';
part 'category.freezed.dart';

@freezed
class CategoryModel with _$CategoryModel {
  const factory CategoryModel({
    @Default("") String id,
    @Default("") String name,
    @Default("") String icon,
    @Default(0) int color,
  }) = _Category;

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);
}
