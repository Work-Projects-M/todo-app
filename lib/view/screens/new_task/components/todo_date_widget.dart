/*

  Created by: Bakhromjon Polat
  Created on: Apr 22 2023 16:00:55
  Github:   https://github.com/BahromjonPolat
  Leetcode: https://leetcode.com/BahromjonPolat/
  LinkedIn: https://linkedin.com/in/bahromjon-polat
  Telegram: https://t.me/BahromjonPolat

  Documentation: 

*/

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo/core/core.dart';
import 'package:todo/core/utils/app_formatter.dart';
import 'package:todo/routing/routing.dart';
import 'package:todo/view/widgets/widgets.dart';

typedef DateSelected = Function(DateTime? date);

class TodoDateWidget extends StatelessWidget {
  final DateTime? initialDate;
  final DateSelected onDateSelected;
  const TodoDateWidget({
    super.key,
    required this.initialDate,
    required this.onDateSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Choose date',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(height: 12.0),
          Text(
            AppFormatter.formatDate(
              initialDate ?? DateTime.now(),
              pattern: 'dd hh:mm',
            ),
            style: Theme.of(context).textTheme.titleLarge,
          ).onVisible(visible: initialDate != null)
        ],
      ).onClick(
        onClick: () {
          showModalBottomSheet(
            context: context,
            backgroundColor: AppColors.white,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(32.0),
                topRight: Radius.circular(32.0),
              ),
            ),
            builder: (context) {
              DateTime? date;
              return Column(
                children: [
                  Expanded(
                    child: CupertinoDatePicker(
                      initialDateTime: initialDate,
                      minimumDate: DateTime.now(),
                      use24hFormat: true,
                      onDateTimeChanged: (value) => date = value,
                      backgroundColor: AppColors.white,
                    ),
                  ),
                  PrimaryButton(
                    label: 'Choose',
                    onPressed: () {
                      onDateSelected.call(date);
                      AppNavigator.pop();
                    },
                    linearGradient: AppColors.linearBlue,
                    margin: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 24.0,
                    ),
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
