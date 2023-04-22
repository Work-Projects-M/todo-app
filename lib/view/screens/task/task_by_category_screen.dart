/*

  Created by: Bakhromjon Polat
  Created on: Apr 22 2023 18:00:23
  Github:   https://github.com/BahromjonPolat
  Leetcode: https://leetcode.com/BahromjonPolat/
  LinkedIn: https://linkedin.com/in/bahromjon-polat
  Telegram: https://t.me/BahromjonPolat

  Documentation: 

*/

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:todo/core/constants/app_icons.dart';
import 'package:todo/locator.dart';
import 'package:todo/models/models.dart';
import 'package:todo/view/widgets/widgets.dart';

class TasksByCategory extends StatelessWidget {
  final CategoryModel category;
  final List<Todo> tasks;
  const TasksByCategory({
    super.key,
    required this.category,
    required this.tasks,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // key: getIt.get<GlobalKey<ScaffoldState>>(),
      appBar: HomeAppBar(title: category.name),
      body: Builder(
        builder: (context) {
          if (tasks.isEmpty) {
            return const EmptyWidget(
              image: AppIcons.noTasks,
              title: 'No tasks',
              space: 70.0,
            );
          }
          return TaskListWidget(tasks: tasks);
        },
      ),
    );
  }
}
