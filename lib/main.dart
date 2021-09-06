import 'package:doctor_app/myhome.dart';
import 'package:doctor_app/time.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'First Task',
      theme: ThemeData(),
      home: MyHomePage(),
    );
  }
}
