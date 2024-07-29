import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather/models/Weathermodel.dart';
import 'package:weather/providers/weatherProvider.dart';
import 'package:weather/views/homeScreen.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (context) {
        return Weatherprovider();
      },
      child: MaterialApp(
        home: Homescreen(),
      ),
    );
  }
}
