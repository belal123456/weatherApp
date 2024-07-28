import 'dart:convert';

import 'package:http/http.dart' as http;

class Weatherservice {
  String baseUrl = "http://api.weatherapi.com/v1";
  String ApiKey = 'c32a475a3b564ebc914230358242307&q';
  getWeather({required String cityName}) async {
    Uri url = Uri.parse("$baseUrl/.json?key=$ApiKey=$cityName&aqi=no");
    http.Response response = await http.get(url);
    Map<String, dynamic> data = jsonDecode(response.body);
  }
}
