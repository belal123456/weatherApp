import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather/services.dart/weatherService.dart';

class Searchscren extends StatelessWidget {
  String? cityName;

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
            onSubmitted: (Data1) {
              cityName = Data1;
              WeatherService service = WeatherService();
              service.getWeather(cityName: cityName!);
            },
            decoration: InputDecoration(
                label: const Text("city"),
                hintText: "entre your city",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(32),
                ),
                focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.amber)),
                suffixIcon: const Icon(
                  Icons.location_city,
                  size: 32,
                )),
          ),
        ),
      ),
    );
  }
}
