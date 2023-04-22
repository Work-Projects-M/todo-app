/*

  Created by: Bakhromjon Polat
  Created on: Apr 22 2023 18:25:21
  Github:   https://github.com/BahromjonPolat
  Leetcode: https://leetcode.com/BahromjonPolat/
  LinkedIn: https://linkedin.com/in/bahromjon-polat
  Telegram: https://t.me/BahromjonPolat

  Documentation: 

*/

import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:todo/core/utils/app_formatter.dart';
import 'package:todo/core/utils/logger.dart';
import 'package:todo/models/models.dart';

import 'package:timezone/timezone.dart' as tz;
import 'package:timezone/data/latest.dart' as tz;

class NotificationService {
  NotificationService._();

  static late AndroidNotificationChannel _channel;
  static late FlutterLocalNotificationsPlugin _flutterLocalNotificationsPlugin;
  static FlutterLocalNotificationsPlugin get notificationPlugin =>
      _flutterLocalNotificationsPlugin;

  static const AndroidInitializationSettings _androidSettings =
      AndroidInitializationSettings('@mipmap/ic_launcher');

  static const DarwinInitializationSettings _iOSSettings =
      DarwinInitializationSettings(
    defaultPresentAlert: true,
    requestAlertPermission: true,
    requestBadgePermission: true,
    requestSoundPermission: true,
    defaultPresentSound: true,
    defaultPresentBadge: true,
  );

  static Future init() async {
    await requestPermission();
    await _initializeSettings();
  }

  static Future<void> _initializeSettings() async {
    _channel = const AndroidNotificationChannel(
      'high_importance_channel', // id
      'High Importance Notifications', // title
      importance: Importance.high,
      enableVibration: true,
      playSound: true,
      showBadge: true,
      enableLights: true,
    );

    _flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
    await _flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(_channel);

    await _flutterLocalNotificationsPlugin.initialize(
      const InitializationSettings(
        android: _androidSettings,
        iOS: _iOSSettings,
      ),
      onDidReceiveNotificationResponse: (details) {
        String? payload = details.payload;
      },
    );
  }

  static Future<void> showNotification(
    Todo todo, {
    String? type,
  }) async {
    return _flutterLocalNotificationsPlugin.show(
      todo.hashCode,
      todo.task,
      AppFormatter.formatDateFromMills(todo.date),
      NotificationDetails(
        iOS: const DarwinNotificationDetails(
          presentSound: true,
          presentAlert: true,
        ),
        android: AndroidNotificationDetails(
          _channel.id,
          _channel.name,
          icon: 'launch_background',
          playSound: true,
          category: AndroidNotificationCategory.service,
        ),
      ),
      payload: type,
    );
  }

  static Future<void> showTimeZonedNotification(
    Todo todo,
  ) async {
    Log.d(todo.id.hashCode, name: 'notification_service');
    tz.initializeTimeZones();

    tz.Location location = tz.getLocation("Asia/Tashkent");
    tz.TZDateTime dateTime = tz.TZDateTime.fromMillisecondsSinceEpoch(
      location,
      todo.date,
    );
    _flutterLocalNotificationsPlugin.zonedSchedule(
      todo.id.hashCode,
      todo.categoryName,
      todo.task,
      dateTime,
      NotificationDetails(
        iOS: const DarwinNotificationDetails(
          presentSound: true,
          presentAlert: true,
        ),
        android: AndroidNotificationDetails(
          _channel.id,
          _channel.name,
          icon: 'launch_background',
          playSound: true,
          category: AndroidNotificationCategory.service,
          // largeIcon: bitMap,
        ),
      ),
      uiLocalNotificationDateInterpretation:
          UILocalNotificationDateInterpretation.absoluteTime,
      androidAllowWhileIdle: true,
    );
  }

  static Future requestPermission() async {
    try {
      FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
          FlutterLocalNotificationsPlugin();
      flutterLocalNotificationsPlugin
          .resolvePlatformSpecificImplementation<
              AndroidFlutterLocalNotificationsPlugin>()
          ?.requestPermission();
    } catch (err) {
      Log.e(err.runtimeType, name: 'notification_service');
    }
  }

  static Future<void> cancelAll() async {
    await _flutterLocalNotificationsPlugin.cancelAll();
  }

  static Future<void> cancel(int id) async {
    Log.d(id.hashCode, name: 'notification_service');
    _flutterLocalNotificationsPlugin.cancel(id);
  }

  static Future<void> pendingRequests() async {
    final pending =
        await _flutterLocalNotificationsPlugin.pendingNotificationRequests();

    for (var p in pending) {
      Log.d('${p.id} | ${p.title} | ${p.body}', name: 'notification_service');
    }
  }
}
