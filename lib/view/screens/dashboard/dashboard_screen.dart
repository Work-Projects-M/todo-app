/*

  Created by: Bakhromjon Polat
  Created on: Apr 21 2023 20:57:07
  Github:   https://github.com/BahromjonPolat
  Leetcode: https://leetcode.com/BahromjonPolat/
  LinkedIn: https://linkedin.com/in/bahromjon-polat
  Telegram: https://t.me/BahromjonPolat

  Documentation: 

*/

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:todo/blocs/bottom_nav_bar/bottom_nav_bar_bloc.dart';
import 'package:todo/core/constants/app_icons.dart';
import 'package:todo/view/screens/dashboard/components/app_bottom_nav_bar.dart';
import 'package:todo/view/screens/home/home_page.dart';
import 'package:todo/view/screens/task/task_page.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  List<Widget> _pages = [];

  @override
  void initState() {
    super.initState();
    _pages = [
      const HomePage(),
      const TaskPage(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    int index = context.watch<BottomNavBarBloc>().state.index;
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: SvgPicture.asset(AppIcons.add),
        onPressed: () {},
      ),
      body: _pages[index],
      bottomNavigationBar: const AppBottomNavBar(),
    );
  }
}
