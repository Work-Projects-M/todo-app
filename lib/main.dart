import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:todo/app.dart';
import 'package:todo/hive/hive.dart';
import 'package:todo/locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await HiveService.init();

  setUp();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
  );
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const AppWidget());
}
