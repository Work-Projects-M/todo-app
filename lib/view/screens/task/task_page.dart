/*

  Created by: Bakhromjon Polat
  Created on: Apr 22 2023 11:49:50
  Github:   https://github.com/BahromjonPolat
  Leetcode: https://leetcode.com/BahromjonPolat/
  LinkedIn: https://linkedin.com/in/bahromjon-polat
  Telegram: https://t.me/BahromjonPolat

  Documentation: 

*/
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:todo/hive/hive.dart';
import 'package:todo/models/models.dart';
import 'package:todo/view/screens/task/components/category_widget.dart';

class TaskPage extends StatelessWidget {
  const TaskPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: ValueListenableBuilder(
        valueListenable: HiveBoxes.categoryBox.listenable(),
        builder: (context, box, child) {
          return GridView.builder(
            itemCount: box.length,
            padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 24),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 13.0,
              crossAxisSpacing: 9.0,
              mainAxisExtent: 180.0,
            ),
            itemBuilder: (context, index) {
              CategoryModel category = box.getAt(index)!;
              return CategoryWidget(category: category);
            },
          );
        },
      ),
    );
  }
}
