import 'package:flutter/material.dart';

import 'home.dart';
//import '';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widget IconTextButton Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: HomePage(title: 'Widget IconTextButton Demo Home Page'),
    );
  }
}
