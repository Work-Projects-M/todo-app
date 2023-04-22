/*

  Created by: Bakhromjon Polat
  Created on: Apr 22 2023 11:00:45
  Github:   https://github.com/BahromjonPolat
  Leetcode: https://leetcode.com/BahromjonPolat/
  LinkedIn: https://linkedin.com/in/bahromjon-polat
  Telegram: https://t.me/BahromjonPolat

  Documentation: 

*/

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:todo/hive/hive.dart';
import 'package:todo/models/models.dart';

part 'todo.g.dart';
part 'todo.freezed.dart';

@freezed
@HiveType(typeId: HiveTypes.todo, adapterName: HiveAdapters.todoAdapter)
class Todo with _$Todo {
  const factory Todo({
    @HiveField(0) @Default("") String id,
    @HiveField(1) @Default(0) int date,
    @HiveField(2) @Default("") String task,
    @HiveField(4) @Default(true) isActive,
    @Default(CategoryModel()) CategoryModel category,
    @HiveField(5) @Default("") String? categoryId,
    @HiveField(6) @Default("") String? categoryName,
  }) = _Todo;

  factory Todo.fromJson(Map<String, dynamic> json) => _$TodoFromJson(json);
}
