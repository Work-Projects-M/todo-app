import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:todo/app.dart';
import 'package:todo/hive/hive.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await HiveService.init();

  runApp(const AppWidget());
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
}
