/*

  Created by: Bakhromjon Polat
  Created on: Apr 22 2023 21:09:19
  Github:   https://github.com/BahromjonPolat
  Leetcode: https://leetcode.com/BahromjonPolat/
  LinkedIn: https://linkedin.com/in/bahromjon-polat
  Telegram: https://t.me/BahromjonPolat

  Documentation: 

*/

import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

void setUp() {
  getIt.registerSingleton<GlobalKey<ScaffoldState>>(GlobalKey<ScaffoldState>());
}
