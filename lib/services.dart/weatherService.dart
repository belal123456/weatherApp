import 'dart:convert';
import 'package:http/http.dart' as http;

class WeatherService {
  final String baseUrl = "http://api.weatherapi.com/v1";
  final String apiKey = 'c32a475a3b564ebc914230358242307';

  Future<Map<String, dynamic>?> getWeather({required String cityName}) async {
    Uri url = Uri.parse("$baseUrl/current.json?key=$apiKey&q=$cityName&aqi=no");

    try {
      http.Response response = await http.get(url);
      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else {
        print(
            'Failed to load weather data with status code: ${response.statusCode}');
        return null;
      }
    } catch (e, stacktrace) {
      print('Error occurred while fetching weather data: $e');
      print('Stacktrace: $stacktrace');
      return null;
    }
  }
}
