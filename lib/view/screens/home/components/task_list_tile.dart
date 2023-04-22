/*

  Created by: Bakhromjon Polat
  Created on: Apr 22 2023 11:45:28
  Github:   https://github.com/BahromjonPolat
  Leetcode: https://leetcode.com/BahromjonPolat/
  LinkedIn: https://linkedin.com/in/bahromjon-polat
  Telegram: https://t.me/BahromjonPolat

  Documentation: 

*/

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:todo/core/constants/app_colors.dart';
import 'package:todo/core/constants/app_icons.dart';
import 'package:todo/core/utils/app_formatter.dart';
import 'package:todo/models/models.dart';

class TaskListTile extends StatelessWidget {
  final Todo todo;
  const TaskListTile({super.key, required this.todo});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          Container(
            height: 55.0,
            width: 4.0,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(12.0),
                  bottomLeft: Radius.circular(12.0),
                ),
                color: Color(todo.category.color)),
          ),
          Checkbox(
            value: true,
            onChanged: (v) {},
          ),
          Expanded(
            child: Text.rich(
              TextSpan(
                  text: AppFormatter.formatDateFromMills(
                    todo.date,
                    pattern: 'hh.mm f',
                  ),
                  style: const TextStyle(
                    color: AppColors.grey,
                    fontSize: 11.0,
                    height: 1.4,
                  ),
                  children: [
                    const WidgetSpan(child: SizedBox(width: 12.0)),
                    TextSpan(
                      text: todo.task,
                      style: Theme.of(context).textTheme.titleMedium,
                    )
                  ]),
            ),
          ),
          IconButton(
            splashRadius: 24.0,
            onPressed: () {},
            icon: SvgPicture.asset(
              AppIcons.bell2,
              colorFilter:
                  const ColorFilter.mode(AppColors.amber, BlendMode.srcIn),
            ),
          )
        ],
      ),
    );
  }
}
