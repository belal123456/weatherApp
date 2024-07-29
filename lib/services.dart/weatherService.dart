import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:weather/models/weather_Model.dart';

class WeatherService {
  final String baseUrl = "http://api.weatherapi.com/v1";
  final String apiKey = 'c32a475a3b564ebc914230358242307';

  Future<Map<String, dynamic>?> getWeather({required String cityName}) async {
    Uri url = Uri.parse(
        "$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=1&aqi=no&alerts=no");
    http.Response response = await http.get(url);
    Map<String, dynamic> datat = jsonDecode(response.body);

    String data1 =
        datat["forecast"]["forecastday"][0]["day"]["condition"]['icon'];
    print(data1);

    Weathermodel mode1 = Weathermodel(
        icona: datat["forecast"]["forecastday"][0]["day"]["condition"]['icon'],
        date: datat['location']['localtime'],
        temp: datat["forecast"]["forecastday"][0]["day"]["avgtemp_c"],
        condition: datat["current"]["condition"]['text'],
        humdity: datat["current"]["humidity"],
        maxtemp: datat["forecast"]["forecastday"][0]["day"]["maxtemp_c"]);
  }
}
