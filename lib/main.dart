import 'package:android_alarm_manager_plus/android_alarm_manager_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_android_alarm_manager_plus/ui/home_page.dart';
import 'package:flutter_android_alarm_manager_plus/utils/background_service.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final BackgroundService service = BackgroundService();

  service.initializeIsolate();
  AndroidAlarmManager.initialize();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static const title = 'Simple Alarm Manager';

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: title,
      home: HomePage(title: title),
    );
  }
}
