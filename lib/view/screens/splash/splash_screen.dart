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
import 'package:todo/core/constants/app_icons.dart';
import 'package:todo/view/widgets/empty_widget.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          EmptyWidget(
            image: AppIcons.splash,
            title: 'Reminders made simple',
            space: 113.0,
          ),
        ],
      ),
    );
  }
}
