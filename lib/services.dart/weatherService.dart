import 'dart:convert';

import 'package:http/http.dart' as http;

class Weatherservice {
  getWeather({required String cityName}) async {
    Uri url = Uri.parse(
        "http://api.weatherapi.com/v1/current.json?key=c32a475a3b564ebc914230358242307&q=London&aqi=no");
    http.Response response = await http.get(url);
    Map<String, dynamic> data = jsonDecode(response.body);
  }
}
