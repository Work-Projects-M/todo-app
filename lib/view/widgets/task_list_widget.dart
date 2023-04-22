/*

  Created by: Bakhromjon Polat
  Created on: Apr 22 2023 17:57:07
  Github:   https://github.com/BahromjonPolat
  Leetcode: https://leetcode.com/BahromjonPolat/
  LinkedIn: https://linkedin.com/in/bahromjon-polat
  Telegram: https://t.me/BahromjonPolat

  Documentation: 

*/
import 'package:flutter/material.dart';
import 'package:todo/hive/hive.dart';
import 'package:todo/models/models.dart';
import 'package:todo/view/screens/home/components/task_list_tile.dart';

class TaskListWidget extends StatelessWidget {
  final List<Todo> tasks;
  const TaskListWidget({super.key, required this.tasks});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (context, index) {
        Todo todo = tasks[index];
        final category = CategoryDb.getCategoryById(todo.categoryId);
        return TaskListTile(todo: todo.copyWith(category: category));
      },
    );
  }
}
