import 'package:flutter/material.dart';
import 'package:job_app/Screen/home_page/home.dart';
//import 'package:job_app/Screen/home_page/home.dart';
//import 'package:job_app/Screen/jobView.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
