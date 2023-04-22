/*

  Created by: Bakhromjon Polat
  Created on: Apr 22 2023 17:10:45
  Github:   https://github.com/BahromjonPolat
  Leetcode: https://leetcode.com/BahromjonPolat/
  LinkedIn: https://linkedin.com/in/bahromjon-polat
  Telegram: https://t.me/BahromjonPolat

  Documentation: 

*/
import 'package:hive/hive.dart';
import 'package:todo/core/utils/app_formatter.dart';
import 'package:todo/hive/hive.dart';
import 'package:todo/models/todo/todo.dart';

class TodoHive {
  const TodoHive._();
  static final Box<Todo> box = HiveBoxes.todoBox;

  static Future<void> addNewTask(Todo todo) async {
    await box.put(todo.id, todo);
  }

  static Future<void> updateTask(Todo todo) async {
    await box.put(todo.id, todo);
  }

  static Future<void> deleteTask(String id) async {
    await box.delete(id);
  }

  static List<Todo> getTasksByCategory(String categoryId) {
    return box.values.where((task) => task.categoryId == categoryId).toList();
  }

  static Iterable<Todo> getCountTasksOfToday() {
    return box.values.where(
      (task) => AppFormatter.isToday(
        DateTime.fromMillisecondsSinceEpoch(task.date),
      ),
    );
  }
}
