import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:weather/models/weathermodel.dart';

class WeatherService {
  final String baseUrl = "http://api.weatherapi.com/v1";
  final String apiKey = 'c32a475a3b564ebc914230358242307';

  Future<Weathermodel> getWeather({required String cityName}) async {
    Uri url = Uri.parse(
        "$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=1&aqi=no&alerts=no");
    http.Response response = await http.get(url);
    Map<String, dynamic> jsonData = jsonDecode(response.body);

    Weathermodel weatherr = Weathermodel.fromJson(jsonData);

    return weatherr;
  }
}
