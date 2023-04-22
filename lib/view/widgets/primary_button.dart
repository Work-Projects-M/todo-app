/*

  Created by: Bakhromjon Polat
  Created on: Apr 22 2023 09:37:51
  Github:   https://github.com/BahromjonPolat
  Leetcode: https://leetcode.com/BahromjonPolat/
  LinkedIn: https://linkedin.com/in/bahromjon-polat
  Telegram: https://t.me/BahromjonPolat

  Documentation: 

*/

import 'package:flutter/material.dart';
import 'package:todo/core/constants/app_colors.dart';

class PrimaryButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String label;
  final LinearGradient linearGradient;
  final EdgeInsets margin;
  const PrimaryButton({
    super.key,
    required this.label,
    required this.onPressed,
    required this.linearGradient,
    required this.margin,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.0,
      width: double.infinity,
      alignment: Alignment.center,
      margin: margin,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        gradient: linearGradient,
        boxShadow: [
          for (int i = 0; i < 5; i++)
            BoxShadow(
              blurRadius: 1.0 * i,
              color: linearGradient.colors.last.withOpacity(.3),
              blurStyle: BlurStyle.outer,
              offset: const Offset(1.0, 1.0),
            ),
        ],
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(10.0),
        onTap: onPressed,
        child: Center(
          child: Text(
            label,
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(color: AppColors.white, fontSize: 15.0),
          ),
        ),
      ),
    );
  }
}
