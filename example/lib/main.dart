import 'package:flutter/material.dart';
import 'package:grid_view_animation/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Grid View Animation',
      home: MainPage());
}
