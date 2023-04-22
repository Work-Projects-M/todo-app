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

import '../models.dart';

part 'todo.g.dart';
part 'todo.freezed.dart';

@freezed
class Todo with _$Todo {
  const factory Todo({
    @Default("") String id,
    @Default("") String date,
    @Default("") String task,
    @Default(CategoryModel()) CategoryModel category,
  }) = _Todo;

  factory Todo.fromJson(Map<String, dynamic> json) => _$TodoFromJson(json);
}
