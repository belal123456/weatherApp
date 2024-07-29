import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:weather/models/weathermodel.dart';
import 'package:weather/providers/weatherProvider.dart';
import 'package:weather/services.dart/weatherService.dart';

class Searchscren extends StatelessWidget {
  String? cityName;
  Searchscren({this.update});
  VoidCallback? update;

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
            onSubmitted: (Data1) async {
              cityName = Data1;
              WeatherService service = WeatherService();

              Weathermodel weather =
                  await service.getWeather(cityName: cityName!);
              Provider.of<Weatherprovider>(context).weatherdata = weather;

              update!();

              Navigator.pop(context);
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
