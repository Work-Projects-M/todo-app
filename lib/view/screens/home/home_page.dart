/*

  Created by: Bakhromjon Polat
  Created on: Apr 22 2023 11:30:38
  Github:   https://github.com/BahromjonPolat
  Leetcode: https://leetcode.com/BahromjonPolat/
  LinkedIn: https://linkedin.com/in/bahromjon-polat
  Telegram: https://t.me/BahromjonPolat

  Documentation: 

*/

import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:todo/core/constants/app_icons.dart';
import 'package:todo/hive/hive.dart';
import 'package:todo/view/widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: HiveBoxes.todoBox.listenable(),
      builder: (context, box, child) {
        if (box.isEmpty) {
          return const EmptyWidget(
            image: AppIcons.noTasks,
            title: 'No tasks',
            space: 70.0,
          );
        }
        return TaskListWidget(tasks: box.values.toList());
      },
    );
  }
}
