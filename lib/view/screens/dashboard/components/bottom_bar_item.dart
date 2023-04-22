/*

  Created by: Bakhromjon Polat
  Created on: Apr 22 2023 10:47:27
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
import 'package:todo/core/constants/constants.dart';

class BottomBarItem extends StatelessWidget {
  final String icon;
  final int index;
  final String title;
  const BottomBarItem({
    super.key,
    required this.icon,
    required this.index,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavBarBloc, BottomNavBarState>(
      builder: (context, state) {
        Color color = state.index == index ? AppColors.blue : AppColors.grey;
        return InkWell(
          customBorder: const CircleBorder(),
          onTap: () {
            context.read<BottomNavBarBloc>().add(
                  BottomNavBarEvent.pageChanged(index),
                );
          },
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 4.0),
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(
                  icon,
                  colorFilter: ColorFilter.mode(
                    color,
                    BlendMode.srcIn,
                  ),
                ),
                Text(
                  title,
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: color,
                      ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
