/*

  Created by: Bakhromjon Polat
  Created on: Apr 22 2023 14:01:21
  Github:   https://github.com/BahromjonPolat
  Leetcode: https://leetcode.com/BahromjonPolat/
  LinkedIn: https://linkedin.com/in/bahromjon-polat
  Telegram: https://t.me/BahromjonPolat

  Documentation: 

*/
import 'package:flutter/material.dart';
import 'package:todo/core/core.dart';
import 'package:todo/services/notification_service.dart';
import 'package:todo/view/widgets/widgets.dart';

class HomeAppBar extends StatelessWidget with PreferredSizeWidget {
  final String title;
  final ReminderWidget? reminderWidget;
  const HomeAppBar({
    super.key,
    required this.title,
    required this.reminderWidget,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      centerTitle: false,
      title: Text(title),
      flexibleSpace: FlexibleSpaceBar(
        background: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              alignment: Alignment.topCenter,
              fit: BoxFit.cover,
              image: AssetImage(AppIcons.abbBarPng),
            ),
          ),
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {
            // NotificationService.pendingRequests();
          },
          icon: const CircleAvatar(backgroundColor: AppColors.white),
        ),
      ],
      bottom: PreferredSize(
        child: reminderWidget ?? const SizedBox(),
        preferredSize: Size(double.infinity, 120.0),
      ),
    );
  }

  @override
  Size get preferredSize => Size(
        double.infinity,
        reminderWidget == null ? 62.0 : 238.0,
      );
}
