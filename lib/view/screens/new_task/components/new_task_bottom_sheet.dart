/*

  Created by: Bakhromjon Polat
  Created on: Apr 22 2023 21:00:48
  Github:   https://github.com/BahromjonPolat
  Leetcode: https://leetcode.com/BahromjonPolat/
  LinkedIn: https://linkedin.com/in/bahromjon-polat
  Telegram: https://t.me/BahromjonPolat

  Documentation: 

*/

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/blocs/blocs.dart';
import 'package:todo/view/screens/new_task/new_task_page.dart';

class NewTaskBottomSheet {
  final GlobalKey<ScaffoldState> scaffoldKey;
  const NewTaskBottomSheet(this.scaffoldKey);

  PersistentBottomSheetController? show() {
    return scaffoldKey.currentState?.showBottomSheet(
      (context) => BlocProvider(
        create: (context) => NewTaskBloc(),
        child: const NewTaskPage(),
      ),
      elevation: 5.0,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(50.0),
          topLeft: Radius.circular(50.0),
        ),
      ),
    );
  }
}
