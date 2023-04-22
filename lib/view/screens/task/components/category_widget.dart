/*

  Created by: Bakhromjon Polat
  Created on: Apr 22 2023 13:50:47
  Github:   https://github.com/BahromjonPolat
  Leetcode: https://leetcode.com/BahromjonPolat/
  LinkedIn: https://linkedin.com/in/bahromjon-polat
  Telegram: https://t.me/BahromjonPolat

  Documentation: 

*/
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:todo/models/models.dart';

class CategoryWidget extends StatelessWidget {
  final CategoryModel category;
  const CategoryWidget({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(5.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 32.0,
            backgroundColor: Color(category.color).withOpacity(.3),
            child: SvgPicture.asset(
              category.icon,
              colorFilter: ColorFilter.mode(
                Color(category.color),
                BlendMode.srcIn,
              ),
            ),
          ),
          Text(
            category.name,
            style: Theme.of(context).textTheme.displaySmall,
          ),
          const SizedBox(height: 30.0),
          Text('${category.count} Task')
        ],
      ),
    );
  }
}
