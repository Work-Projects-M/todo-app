/*

  Created by: Bakhromjon Polat
  Created on: Apr 21 2023 20:39:00
  Github:   https://github.com/BahromjonPolat
  Leetcode: https://leetcode.com/BahromjonPolat/
  LinkedIn: https://linkedin.com/in/bahromjon-polat
  Telegram: https://t.me/BahromjonPolat

  Documentation: 

*/
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo/core/theme/app_theme.dart';
import 'package:todo/routing/app_navigator.dart';
import 'package:todo/routing/app_route_name.dart';
import 'package:todo/routing/route_generator.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375.0, 812.0),
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'TODO',
          theme: getApplicationTheme(),
          initialRoute: RouteNames.initial,
          onGenerateRoute: RouteGenerator.onGenerateRoute,
          navigatorKey: AppNavigator.navigatorKey,
        );
      },
    );
  }
}
