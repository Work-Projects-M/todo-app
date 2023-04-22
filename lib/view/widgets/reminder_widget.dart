/*

  Created by: Bakhromjon Polat
  Created on: Apr 22 2023 21:54:37
  Github:   https://github.com/BahromjonPolat
  Leetcode: https://leetcode.com/BahromjonPolat/
  LinkedIn: https://linkedin.com/in/bahromjon-polat
  Telegram: https://t.me/BahromjonPolat

  Documentation: 

*/

import 'package:flutter/material.dart';
import 'package:todo/core/core.dart';
import 'package:todo/models/models.dart';

class ReminderWidget extends StatelessWidget {
  final Todo todo;
  const ReminderWidget({super.key, required this.todo});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white.withOpacity(.3),
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                const Text(
                  'Today reminder',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20.0,
                    color: AppColors.white,
                  ),
                ),
                Text(todo.task),
              ],
            ),
          )
        ],
      ),
    );
  }
}
