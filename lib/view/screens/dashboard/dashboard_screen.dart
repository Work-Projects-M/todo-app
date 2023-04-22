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
import 'package:todo/blocs/blocs.dart';
import 'package:todo/blocs/bottom_nav_bar/bottom_nav_bar_bloc.dart';
import 'package:todo/core/constants/app_icons.dart';
import 'package:todo/hive/hive.dart';
import 'package:todo/locator.dart';
import 'package:todo/services/notification_service.dart';
import 'package:todo/view/widgets/widgets.dart';
import 'components/components.dart';
import 'package:todo/view/screens/new_task/components/new_task_bottom_sheet.dart';
import 'package:todo/view/screens/screens.dart';

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
    NotificationService.init();
  }

  @override
  Widget build(BuildContext context) {
    int index = context.watch<BottomNavBarBloc>().state.index;
    int taskCount = TodoHive.getCountTasksOfToday().length;
    return Scaffold(
      key: getIt.get<GlobalKey<ScaffoldState>>(),
      appBar: HomeAppBar(
        title: 'Hello Brenda! \nToday you have $taskCount tasks',
        reminderWidget: taskCount > 0
            ? ReminderWidget(
                todo: TodoHive.getCountTasksOfToday().first,
              )
            : null,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: SvgPicture.asset(AppIcons.add),
        onPressed: () {
          NewTaskBottomSheet(getIt.get<GlobalKey<ScaffoldState>>()).show();
        },
      ),
      body: _pages[index],
      bottomNavigationBar: const AppBottomNavBar(),
    );
  }
}
