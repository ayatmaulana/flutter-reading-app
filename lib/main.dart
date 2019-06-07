import 'package:flutter/material.dart';
import 'package:flutter_reading_app/ui/detail.dart';
import 'package:flutter_reading_app/ui/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Detail(),
    );
  }
}
