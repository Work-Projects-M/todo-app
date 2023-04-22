import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:todo/app.dart';

void main() async {
  runApp(const AppWidget());
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
}
