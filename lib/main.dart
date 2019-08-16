import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_reading_app/ui/detail.dart';
import 'package:flutter_reading_app/ui/home.dart';
import 'package:flutter/foundation.dart'
    show debugDefaultTargetPlatformOverride;
void main() {
  debugDefaultTargetPlatformOverride = TargetPlatform.fuchsia;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'Flutter Demo',
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      initialRoute: '/home',
      routes: <String, WidgetBuilder>{
        '/': (context) => Detail(),
        '/home': (context) => Home(),
        '/detail': (context) => Detail()
      },
    );
  }
}
