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
import 'package:fluttertoast/fluttertoast.dart';
import 'package:todo/blocs/blocs.dart';
import 'package:todo/core/core.dart';
import 'package:todo/core/utils/app_valiators.dart';
import 'package:todo/hive/hive.dart';
import 'package:todo/models/models.dart';
import 'package:todo/routing/routing.dart';
import 'package:todo/view/screens/new_task/components/components.dart';
import 'package:todo/view/widgets/widgets.dart';
import 'package:uuid/uuid.dart';

class NewTaskPage extends StatefulWidget {
  const NewTaskPage({super.key});

  @override
  State<NewTaskPage> createState() => _NewTaskPageState();
}

class _NewTaskPageState extends State<NewTaskPage> {
  final _formKey = GlobalKey<FormState>();
  final _taskController = TextEditingController();
  CategoryModel? _category;
  DateTime? _date;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewTaskBloc, NewTaskState>(
      builder: (context, state) {
        return Container(
          decoration: const BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(50.0),
              topLeft: Radius.circular(50.0),
            ),
          ),
          padding: const EdgeInsets.only(top: 42.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Add new task',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              Form(
                key: _formKey,
                child: TextFormField(
                  autofocus: true,
                  controller: _taskController,
                  textCapitalization: TextCapitalization.sentences,
                  validator: AppValidators.general,
                  style: const TextStyle(
                    fontSize: 20.0,
                    color: AppColors.black,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                  ),
                ).symmetricPadding(h: 26.0),
              ),
              // const Divider(),
              CategoryListWidget(
                selectedCategory: state.category,
                categories: HiveBoxes.categoryBox.values.toList(),
                onCategorySelected: (category) {
                  _category = category;
                  context
                      .read<NewTaskBloc>()
                      .add(NewTaskEvent.categorySelected(category));
                },
              ),

              const Divider(),

              TodoDateWidget(
                initialDate: state.date,
                onDateSelected: (date) {
                  if (date == null) return;
                  _date = date;
                  context
                      .read<NewTaskBloc>()
                      .add(NewTaskEvent.dateSelected(date));
                },
              ).symmetricPadding(h: 26.0),
              PrimaryButton(
                label: 'Add task',
                onPressed: _onPressed,
                linearGradient: AppColors.linearBlue,
                margin: const EdgeInsets.symmetric(
                  horizontal: 26.0,
                  vertical: 16.0,
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  void _onPressed() {
    FormState? formstate = _formKey.currentState;
    bool isValidate = formstate?.validate() ?? false;
    if (!isValidate) return;

    CategoryModel? category = _category;
    DateTime? date = _date;

    if (category == null) {
      Fluttertoast.showToast(msg: 'Category can not be null');
      return;
    }

    if (date == null) {
      Fluttertoast.showToast(msg: 'Date can not be null');
      return;
    }

    String task = _taskController.text.trim();

    Todo todo = Todo(
      id: const Uuid().v4(),
      category: category,
      date: date.millisecondsSinceEpoch,
      isActive: true,
      task: task,
    );

    BlocProvider.of<NewTaskBloc>(context).add(NewTaskEvent.addTask(todo));
    Fluttertoast.showToast(msg: 'New task was added successfully');
    AppNavigator.pop();
  }
}
