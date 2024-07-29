import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:weather/providers/weatherProvider.dart';
import 'package:weather/views/homeScreen.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        return Weatherprovider();
      },
      child: MaterialApp(
        home: Homescreen(),
      ),
    );
  }
}
