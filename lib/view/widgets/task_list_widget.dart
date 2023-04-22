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
import 'package:todo/core/utils/app_formatter.dart';
import 'package:todo/hive/hive.dart';
import 'package:todo/models/models.dart';
import 'package:todo/view/screens/home/components/task_list_tile.dart';

class TaskListWidget extends StatelessWidget {
  final List<Todo> tasks;
  const TaskListWidget({super.key, required this.tasks});

  @override
  Widget build(BuildContext context) {
    tasks.sort((a, b) => a.date.compareTo(b.date));
    return ListView.builder(
      itemCount: tasks.length,
      padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 18.0),
      itemBuilder: (context, index) {
        Todo todo = tasks[index];
        final category = CategoryDb.getCategoryById(todo.categoryId);
        bool isTheSame = true;
        String taskDate = AppFormatter.formatDateFromMills(
          todo.date,
          pattern: 'dd dd-mm-yyyy',
        );

        if (index == 0) {
          isTheSame = false;
        } else {
          String date = AppFormatter.formatDateFromMills(
            tasks[index - 1].date,
            pattern: 'dd dd-mm-yyyy',
          );
          isTheSame = date == taskDate;
        }

        if (!isTheSame) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: index == 0 ? 0 : 24.0),
              Text(
                taskDate,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: 12.0),
              TaskListTile(todo: todo),
            ],
          );
        }
        return TaskListTile(todo: todo.copyWith(category: category));
      },
    );
  }
}
