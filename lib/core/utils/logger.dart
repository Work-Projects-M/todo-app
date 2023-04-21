/*

  Created by: Bakhromjon Polat
  Created on: Apr 21 2023 20:54:23
  Github:   https://github.com/BahromjonPolat
  Leetcode: https://leetcode.com/BahromjonPolat/
  LinkedIn: https://linkedin.com/in/bahromjon-polat
  Telegram: https://t.me/BahromjonPolat

  Documentation: 

*/

import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'app_formatter.dart';

class Log {
  const Log._();

  static void d(Object? object, {String name = ''}) {
    if (kDebugMode) {
      name = name.isEmpty ? '' : '[$name]';
      String text = '\x1B[94m$_time: \x1B[93m$name \x1B[92m$object\x1B[0m';
      print(text);
    }
  }

  // print errors
  static void e(Object? object, {String name = ''}) {
    if (kDebugMode) {
      name = name.isEmpty ? '' : '[$name]';
      String text = '\x1B[94m$_time: \x1B[93m$name\x1B[91m$object\x1B[0m';
      print(text);
    }
  }

  // Pretty-print JSON
  static void j(Object? object, {String name = ''}) {
    if (kDebugMode) {
      name = name.isEmpty ? '' : '[$name]';
      JsonEncoder encoder = const JsonEncoder.withIndent(' ');
      String prettyJson = encoder.convert(object);
      String text =
          '\x1B[94m$_time: \x1B[93m$name\n\n\x1B[97m$prettyJson\x1B[0m';
      print(text);
    }
  }

  static formatJson(String json) {
    json = json.replaceAll(RegExp(r'"[]"'), '');
  }

  static String get _time => AppFormatter.formatDate(DateTime.now());
}
