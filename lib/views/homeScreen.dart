import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather/views/searchScren.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF333333),
        appBar: AppBar(
          backgroundColor: Colors.blue[300],
          title: const Center(
            child: Text(
              "weather",
              style: TextStyle(
                fontSize: 32,
                color: Colors.white,
              ),
            ),
          ),
        ),
        body: ListTile(
          title: Center(
            child: Column(
              mainAxisSize:
                  MainAxisSize.min, // Ensures the column takes up minimal space
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
                        return Searchscren();
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
        ));
  }
}
