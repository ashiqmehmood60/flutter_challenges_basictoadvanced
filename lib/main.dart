import 'package:basic_projects/projects/color_changes.dart';
import 'package:basic_projects/projects/counter_app.dart';
import 'package:basic_projects/projects/todoapp.dart';
import 'package:basic_projects/projects/toggletext.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Todoapp());
  }
}
