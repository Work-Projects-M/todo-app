/*

  Created by: Bakhromjon Polat
  Created on: Apr 22 2023 10:41:30
  Github:   https://github.com/BahromjonPolat
  Leetcode: https://leetcode.com/BahromjonPolat/
  LinkedIn: https://linkedin.com/in/bahromjon-polat
  Telegram: https://t.me/BahromjonPolat

  Documentation: 

*/

import 'package:flutter/material.dart';
import 'package:todo/core/constants/app_icons.dart';
import 'package:todo/view/screens/dashboard/components/bottom_bar_item.dart';

class AppBottomNavBar extends StatelessWidget {
  const AppBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Row(
        children: const [
          SizedBox(width: 40.0),
          BottomBarItem(icon: AppIcons.home, index: 0, title: 'Home'),
          Spacer(),
          BottomBarItem(icon: AppIcons.grid, index: 1, title: 'Task'),
          SizedBox(width: 40.0),
        ],
      ),
    );
  }
}
