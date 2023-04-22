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
    // useMaterial3: true,
    fontFamily: 'Rubik',
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(375.0, 56.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    ),
    appBarTheme: const AppBarTheme(
      titleTextStyle: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 18.0,
      ),
    ),
    textTheme: const TextTheme(
      displayMedium: TextStyle(
        color: AppColors.indigo,
        fontSize: 22.0,
        fontWeight: FontWeight.w500,
      ),
      displaySmall: TextStyle(
        fontSize: 17.0,
        fontWeight: FontWeight.w500,
      ),
      titleMedium: TextStyle(
        color: AppColors.indigo,
        fontWeight: FontWeight.w500,
        fontSize: 14.0,
      ),
    ),

    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: AppColors.pink,
      elevation: 5.0,
    ),
    checkboxTheme: CheckboxThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50.0),
      ),
      overlayColor: MaterialStateProperty.all(AppColors.grey),
      checkColor: MaterialStateProperty.all(AppColors.white),
      fillColor: MaterialStateProperty.all(AppColors.green),
      side: const BorderSide(color: AppColors.grey),
    ),
  );
}
