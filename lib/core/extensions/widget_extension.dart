/*

  Created by: Bakhromjon Polat
  Created on: Apr 22 2023 15:33:10
  Github:   https://github.com/BahromjonPolat
  Leetcode: https://leetcode.com/BahromjonPolat/
  LinkedIn: https://linkedin.com/in/bahromjon-polat
  Telegram: https://t.me/BahromjonPolat

  Documentation: 

*/

import 'package:flutter/material.dart';

extension WidgetExt on Widget {
  Widget onVisible({bool visible = true}) => Visibility(
        visible: visible,
        child: this,
      );

  Widget symmetricPadding({double h = 0.0, double v = 0.0}) => Padding(
        padding: EdgeInsets.symmetric(vertical: v, horizontal: h),
        child: this,
      );
  Widget onClick({VoidCallback? onClick, double radius = 8.0}) => InkWell(
        onTap: onClick,
        borderRadius: BorderRadius.circular(radius),
        child: this,
      );
}
