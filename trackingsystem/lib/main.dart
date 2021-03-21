import 'package:flutter/material.dart';
import 'package:trackingsystem/screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'บันทึกกิจกรรมผู้ป่วย',
      theme: ThemeData(
        primaryColor:
            Colors.indigo[900], // use primaryColor instead of primaryswatch
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),
    );
  }
}
