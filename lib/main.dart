import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather/views/homeScreen.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homescreen(),
    );
  }
}
