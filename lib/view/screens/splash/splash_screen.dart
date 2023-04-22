/*

  Created by: Bakhromjon Polat
  Created on: Apr 22 2023 09:12:46
  Github:   https://github.com/BahromjonPolat
  Leetcode: https://leetcode.com/BahromjonPolat/
  LinkedIn: https://linkedin.com/in/bahromjon-polat
  Telegram: https://t.me/BahromjonPolat

  Documentation: 

*/
import 'package:flutter/material.dart';
import 'package:todo/core/constants/app_colors.dart';
import 'package:todo/core/constants/app_icons.dart';
import 'package:todo/core/data/category_data.dart';
import 'package:todo/hive/hive.dart';
import 'package:todo/routing/routing.dart';
import 'package:todo/view/widgets/widgets.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          const EmptyWidget(
            image: AppIcons.splash,
            title: 'Reminders made simple',
            space: 113.0,
          ),
          const Spacer(),
          PrimaryButton(
            label: 'Get started',
            onPressed: _onPressed,
            linearGradient: AppColors.linearGreen,
            margin: const EdgeInsets.symmetric(horizontal: 55.0),
          ),
          const SizedBox(height: 92.0),
        ],
      ),
    );
  }

  void _onPressed() async {
    await AppPref.setBool(key: PrefKeys.started, value: true);
    await CategoryDb.putAll(CategoryData.categories);
    AppNavigator.pushNamedAndRemoveUntil(RouteNames.home);
  }
}
