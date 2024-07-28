import 'dart:convert';
import 'package:http/http.dart' as http;

class WeatherService {
  final String baseUrl = "http://api.weatherapi.com/v1";
  final String apiKey = 'c32a475a3b564ebc914230358242307';

  Future<Map<String, dynamic>?> getWeather({required String cityName}) async {
    Uri url = Uri.parse("$baseUrl/current.json?key=$apiKey&q=$cityName&aqi=no");
    http.Response response = await http.get(url);
    print(response.body);
  }
}
