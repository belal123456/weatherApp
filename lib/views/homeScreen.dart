import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:weather/models/weather_Model.dart';
import 'package:weather/models/weathermodel.dart';

import 'package:weather/providers/weatherProvider.dart';
import 'package:weather/views/pagesWithData.dart';
import 'package:weather/views/searchScren.dart';

class Homescreen extends StatefulWidget {
  Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  Weathermodel? weatherdata;
  void UpdateUi() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF333333),
        appBar: AppBar(
          backgroundColor:
              weatherdata == null ? Colors.black : Colors.blue[300],
          title: Center(
            child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Searchscren();
                }));
              },
              child: const Text(
                "weather",
                style: TextStyle(
                  fontSize: 32,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        body: Provider.of<Weatherprovider>(context, listen: true).Weathermode ==
                null
            ? ListTile(
                title: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize
                        .min, // Ensures the column takes up minimal space
                    children: [
                      const Text(
                        "Now you can get the weather just",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      const Text(
                        "click the button",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      IconButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return Searchscren(
                                update: UpdateUi,
                              );
                            }));
                          },
                          icon: const Icon(
                            Icons.search,
                            size: 32,
                            color: Colors.amber,
                          ))
                    ],
                  ),
                ),
              )
            : dataPage());
  }
}
