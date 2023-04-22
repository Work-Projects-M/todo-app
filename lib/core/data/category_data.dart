/*

  Created by: Bakhromjon Polat
  Created on: Apr 22 2023 13:36:49
  Github:   https://github.com/BahromjonPolat
  Leetcode: https://leetcode.com/BahromjonPolat/
  LinkedIn: https://linkedin.com/in/bahromjon-polat
  Telegram: https://t.me/BahromjonPolat

  Documentation: 

*/

import 'package:todo/core/constants/app_colors.dart';
import 'package:todo/core/constants/app_icons.dart';
import 'package:todo/models/models.dart';

class CategoryData {
  const CategoryData._();
  static final List<CategoryModel> categories = [
    CategoryModel(
      id: '0',
      color: AppColors.amber.value,
      name: 'Personal',
      count: 0,
      icon: AppIcons.user,
    ),
    CategoryModel(
      id: '1',
      color: AppColors.green.value,
      name: 'Work',
      count: 0,
      icon: AppIcons.briefcase,
    ),
    CategoryModel(
      id: '2',
      color: AppColors.red.value,
      name: 'Meeting',
      count: 0,
      icon: AppIcons.comment,
    ),
    CategoryModel(
      id: '3',
      color: AppColors.orange.value,
      name: 'Shopping',
      count: 0,
      icon: AppIcons.shoppingBasket,
    ),
    CategoryModel(
      id: '4',
      color: AppColors.blue.value,
      name: 'Party',
      count: 0,
      icon: AppIcons.confetti,
    ),
    CategoryModel(
      id: '5',
      color: AppColors.pink.value,
      name: 'Study',
      count: 0,
      icon: AppIcons.molecule,
    ),
  ];
}
