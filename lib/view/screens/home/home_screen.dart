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
import 'package:flutter_svg/svg.dart';
import 'package:todo/core/constants/app_icons.dart';
import 'package:todo/view/screens/home/components/app_bottom_nav_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: SvgPicture.asset(AppIcons.add),
        onPressed: () {},
      ),
      bottomNavigationBar: AppBottomNavBar(),
    );
  }
}
