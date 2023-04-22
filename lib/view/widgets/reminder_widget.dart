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
import 'package:flutter_svg/svg.dart';
import 'package:todo/core/core.dart';
import 'package:todo/core/utils/app_formatter.dart';
import 'package:todo/models/models.dart';

class ReminderWidget extends StatelessWidget {
  final Todo todo;
  const ReminderWidget({super.key, required this.todo});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 18.0, vertical: 13.0),
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 21.0),
      decoration: BoxDecoration(
        color: AppColors.white.withOpacity(.3),
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Today reminder',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20.0,
                    color: AppColors.white,
                  ),
                ),
                const SizedBox(height: 12.0),
                Text(
                  todo.task,
                  style: TextStyle(
                    color: AppColors.white,
                    fontSize: 11.0,
                  ),
                ),
                const SizedBox(height: 16.0),
                Text(
                  AppFormatter.formatDateFromMills(
                    todo.date,
                    pattern: 'hh.mm f',
                  ),
                  style: TextStyle(
                    color: AppColors.white,
                    fontSize: 11.0,
                  ),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              IconButton(
                splashRadius: 12.0,
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(maxHeight: 32.0),
                onPressed: () {},
                icon: Icon(Icons.clear, color: AppColors.white),
              ),
              SvgPicture.asset(AppIcons.bell1),
            ],
          )
        ],
      ),
    );
  }
}
