/*

  Created by: Bakhromjon Polat
  Created on: Apr 22 2023 09:13:45
  Github:   https://github.com/BahromjonPolat
  Leetcode: https://leetcode.com/BahromjonPolat/
  LinkedIn: https://linkedin.com/in/bahromjon-polat
  Telegram: https://t.me/BahromjonPolat

  Documentation: 

*/

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class EmptyWidget extends StatelessWidget {
  final String image;
  final String title;
  final double space;
  const EmptyWidget({
    super.key,
    required this.image,
    required this.title,
    required this.space,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(image),
          SizedBox(height: space),
          Text(
            title,
            style: Theme.of(context).textTheme.displayMedium,
          ),
        ],
      ),
    );
  }
}
