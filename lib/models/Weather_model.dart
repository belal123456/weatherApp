class Weathermodel {
  final String date;
  final double temp;
  final String condition;
  final int humidity;
  final double maxTemp;
  final String icon;

  Weathermodel({
    required this.date,
    required this.icon,
    required this.temp,
    required this.condition,
    required this.humidity,
    required this.maxTemp,
  });

  factory Weathermodel.fromJson(Map<String, dynamic> jsonData) {
    return Weathermodel(
      date: jsonData['location']['localtime'],
      icon: jsonData["forecast"]["forecastday"][0]["day"]["condition"]["icon"],
      temp: jsonData["forecast"]["forecastday"][0]["day"]["avgtemp_c"],
      condition: jsonData["current"]["condition"]["text"],
      humidity: jsonData["current"]["humidity"],
      maxTemp: jsonData["forecast"]["forecastday"][0]["day"]["maxtemp_c"],
    );
  }
}
