import 'package:flutter/material.dart';
import 'package:test_app/core/theme/tasky_theme.dart';
import 'package:test_app/ui/screens/challenge_detail_screen.dart';
import 'package:test_app/ui/screens/digital_clock_screen.dart';
import 'package:test_app/ui/screens/nav_bar.dart';

void main() {
  runApp(const TaskyApp());
}

class TaskyApp extends StatelessWidget {
  const TaskyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tasky',
      theme: TaskyTheme.theme,
      home: const NavBar(),
    );
  }
}
