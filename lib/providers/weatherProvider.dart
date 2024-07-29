import 'package:flutter/cupertino.dart';
import 'package:weather/models/weather_Model.dart';
import 'package:weather/models/weathermodel.dart';

class Weatherprovider extends ChangeNotifier {
  Weathermodel? _weathermode;
  set weathermode(Weathermodel? weather) {
    _weathermode = weather;
    notifyListeners();
  }

  Weathermodel? get Weathermode => _weathermode;
}
