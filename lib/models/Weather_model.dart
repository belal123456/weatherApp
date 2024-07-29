class Weathermodel {
  final String date;
  final double temp;
  final String condition;
  final int humdity;
  final double maxtemp;
  final String icona;

  Weathermodel(
      {required this.date,
      required this.icona,
      required this.temp,
      required this.condition,
      required this.humdity,
      required this.maxtemp});
}
