/*

  Created by: Bakhromjon Polat
  Created on: Apr 21 2023 20:50:18
  Github:   https://github.com/BahromjonPolat
  Leetcode: https://leetcode.com/BahromjonPolat/
  LinkedIn: https://linkedin.com/in/bahromjon-polat
  Telegram: https://t.me/BahromjonPolat

  Documentation: 

*/

import 'package:flutter/material.dart';
import 'package:todo/view/screens/dashboard/dashboard.dart';
import 'package:todo/view/screens/splash/splash_screen.dart';

import 'app_route_name.dart';
import 'package:todo/core/core.dart';

class RouteGenerator {
  RouteGenerator._();
  static Route? onGenerateRoute(RouteSettings settings) {
    var routingData = settings.name?.getRoutingData;

    switch (routingData?.route) {
      case RouteNames.initial:
        return _FadeRoute(
          child: const SplashScreen(),
          routeName: RouteNames.initial,
        );
      case RouteNames.home:
        return _FadeRoute(
          child: const DashboardScreen(),
          routeName: RouteNames.home,
        );
      default:
        return null;
    }
  }
}

class _FadeRoute extends PageRouteBuilder {
  final Widget child;
  final String? routeName;
  _FadeRoute({
    required this.child,
    required this.routeName,
  }) : super(
          settings: RouteSettings(name: routeName),
          transitionDuration: const Duration(milliseconds: 1500),
          reverseTransitionDuration: const Duration(milliseconds: 1500),
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              child,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              FadeTransition(opacity: animation, child: child),
        );
}
