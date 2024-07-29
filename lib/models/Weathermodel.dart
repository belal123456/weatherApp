class Weathermodel {
  String date;
  double temp;
  String condition;
  int humdity;
  double maxtemp;
  String icona;

  Weathermodel(
      {required this.date,
      required this.icona,
      required this.temp,
      required this.condition,
      required this.humdity,
      required this.maxtemp});

  factory Weathermodel.fromJson(dynamic jsonData) {
    return Weathermodel(
        date: jsonData['location']['localtime'],
        icona: jsonData["forecast"]["forecastday"][0]["day"]["condition"]
            ['icon'],
        temp: jsonData["forecast"]["forecastday"][0]["day"]["avgtemp_c"],
        condition: jsonData["current"]["condition"]['text'],
        humdity: jsonData["current"]["humidity"],
        maxtemp: jsonData["forecast"]["forecastday"][0]["day"]["maxtemp_c"]);
  }
  @override
  String toString() {
    return 'tem= $temp  maxTemp =$maxtemp  condition =$condition  data =$date';
  }
}
