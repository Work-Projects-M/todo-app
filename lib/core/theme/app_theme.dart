/*

  Created by: Bakhromjon Polat
  Created on: Apr 22 2023 09:26:53
  Github:   https://github.com/BahromjonPolat
  Leetcode: https://leetcode.com/BahromjonPolat/
  LinkedIn: https://linkedin.com/in/bahromjon-polat
  Telegram: https://t.me/BahromjonPolat

  Documentation: 

*/

import 'package:flutter/material.dart';
import 'package:todo/core/constants/app_colors.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(375.0, 56.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    ),
    textTheme: const TextTheme(
      displayMedium: TextStyle(
        color: AppColors.indigo,
        fontSize: 22.0,
        fontWeight: FontWeight.w500,
      ),
    ),
  );
}
