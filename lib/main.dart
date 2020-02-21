import 'package:flutter/material.dart';
import 'splash_screen.dart';
import 'package:flutter/cupertino.dart';


void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(
          primarySwatch: Colors.blue, accentColor: Colors.cyanAccent),
      home: SplashScreen(),
    );
  }
}
