class Weathermodel {
  final String date;
  final String temp;
  final String condition;
  final String humidity;
  final String maxTemp;
  final String icon;
  final String name;

  Weathermodel({
    required this.name,
    required this.date,
    required this.icon,
    required this.temp,
    required this.condition,
    required this.humidity,
    required this.maxTemp,
  });

  factory Weathermodel.fromJson(Map<String, dynamic> jsonData) {
    return Weathermodel(
      name: jsonData['location']['name'],
      date: jsonData['location']['localtime'],
      icon: jsonData["forecast"]["forecastday"][0]["day"]["condition"]["icon"],
      temp:
          jsonData["forecast"]["forecastday"][0]["day"]["avgtemp_c"].toString(),
      condition: jsonData["current"]["condition"]["text"],
      humidity: jsonData["current"]["humidity"].toString(),
      maxTemp:
          jsonData["forecast"]["forecastday"][0]["day"]["maxtemp_c"].toString(),
    );
  }
}
