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
import 'package:todo/blocs/bottom_nav_bar/bottom_nav_bar_bloc.dart';
import 'package:todo/core/theme/app_theme.dart';
import 'package:todo/routing/app_navigator.dart';
import 'package:todo/routing/app_route_name.dart';
import 'package:todo/routing/route_generator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => BottomNavBarBloc()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'TODO',
        theme: getApplicationTheme(),
        initialRoute: RouteNames.initial,
        onGenerateRoute: RouteGenerator.onGenerateRoute,
        navigatorKey: AppNavigator.navigatorKey,
      ),
    );
  }
}
