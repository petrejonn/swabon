import 'package:flutter/material.dart';
import 'package:swabon/screens/on_device.dart';
import 'package:swabon/screens/wifi_test.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Status Plus',
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          appBarTheme: AppBarTheme(color: Colors.white, elevation: 0)),
      home: WifiTest(),
    );
  }
}
