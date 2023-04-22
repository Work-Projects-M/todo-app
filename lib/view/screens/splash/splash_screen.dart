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
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo/core/constants/app_colors.dart';
import 'package:todo/core/constants/app_icons.dart';
import 'package:todo/view/widgets/empty_widget.dart';
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

  void _onPressed() {}
}
