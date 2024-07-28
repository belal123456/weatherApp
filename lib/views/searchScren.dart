import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Searchscren extends StatelessWidget {
  const Searchscren({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber[600],
        title: const Text(
          "Search For Your City ",
          style: TextStyle(color: Colors.white, fontSize: 32),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Center(
          child: TextField(
            decoration: InputDecoration(
                label: const Text("city"),
                hintText: "entre your city",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(32),
                ),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.amber)),
                suffixIcon: Icon(
                  Icons.location_city,
                  size: 32,
                )),
          ),
        ),
      ),
    );
  }
}
