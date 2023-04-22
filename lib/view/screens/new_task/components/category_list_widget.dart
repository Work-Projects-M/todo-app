/*

  Created by: Bakhromjon Polat
  Created on: Apr 22 2023 14:51:11
  Github:   https://github.com/BahromjonPolat
  Leetcode: https://leetcode.com/BahromjonPolat/
  LinkedIn: https://linkedin.com/in/bahromjon-polat
  Telegram: https://t.me/BahromjonPolat

  Documentation: 

*/

import 'package:flutter/material.dart';
import 'package:todo/core/core.dart';
import 'package:todo/models/category/category.dart';

typedef CategorySelected = Function(CategoryModel category);

class CategoryListWidget extends StatelessWidget {
  final List<CategoryModel> categories;
  final CategorySelected onCategorySelected;
  final CategoryModel selectedCategory;

  const CategoryListWidget({
    super.key,
    required this.categories,
    required this.onCategorySelected,
    required this.selectedCategory,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 28.0,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          CategoryModel category = categories[index];
          bool isTheSame = category == selectedCategory;
          return InkWell(
            onTap: () => onCategorySelected.call(category),
            child: Container(
              height: 27.0,
              padding: const EdgeInsets.symmetric(
                horizontal: 8.0,
                vertical: 4.0,
              ),
              decoration: BoxDecoration(
                color: isTheSame ? Color(category.color) : Colors.transparent,
                borderRadius: BorderRadius.circular(4.0),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Visibility(
                    visible: !isTheSame,
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 5.0,
                          backgroundColor: Color(category.color),
                        ),
                        const SizedBox(width: 5.0),
                      ],
                    ),
                  ),
                  Text(
                    category.name,
                    style: Theme.of(context).textTheme.labelMedium?.copyWith(
                          color: isTheSame ? AppColors.white : AppColors.black,
                        ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
