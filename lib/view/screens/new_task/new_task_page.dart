/*

  Created by: Bakhromjon Polat
  Created on: Apr 22 2023 14:36:56
  Github:   https://github.com/BahromjonPolat
  Leetcode: https://leetcode.com/BahromjonPolat/
  LinkedIn: https://linkedin.com/in/bahromjon-polat
  Telegram: https://t.me/BahromjonPolat

  Documentation: 

*/

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/blocs/blocs.dart';
import 'package:todo/core/constants/app_colors.dart';
import 'package:todo/core/utils/logger.dart';
import 'package:todo/hive/hive.dart';
import 'package:todo/view/screens/new_task/components/category_list_widget.dart';

class NewTaskPage extends StatefulWidget {
  const NewTaskPage({super.key});

  @override
  State<NewTaskPage> createState() => _NewTaskPageState();
}

class _NewTaskPageState extends State<NewTaskPage> {
  final _taskController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BlocBuilder<NewTaskBloc, NewTaskState>(
          builder: (context, state) {
            Log.d(state.category, name: 'new_task_page');
            return Container(
              decoration: const BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(50.0),
                  topLeft: Radius.circular(50.0),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextField(
                    controller: _taskController,
                  ),
                  const Divider(),
                  CategoryListWidget(
                    selectedCategory: state.category,
                    categories: HiveBoxes.categoryBox.values.toList(),
                    onCategorySelected: (category) {
                      context
                          .read<NewTaskBloc>()
                          .add(NewTaskEvent.categorySelected(category));
                    },
                  ),
                  const Divider(),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}
