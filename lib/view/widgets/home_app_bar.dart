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

class HomeAppBar extends StatelessWidget with PreferredSizeWidget {
  final String title;
  const HomeAppBar({super.key, required this.title});

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
          onPressed: () async {},
          icon: const CircleAvatar(backgroundColor: AppColors.white),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, 62.0);
}
