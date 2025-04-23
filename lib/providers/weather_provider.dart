import 'package:flutter/material.dart';
import 'package:weather/weather_conditions.dart';

class WeatherProvider extends ChangeNotifier {
  int tempInFahrenheit = 0;
  WeatherCondition condition = WeatherCondition.unknown;

  updateWeather(int newTempFahrenheit, WeatherCondition newCondition) {
    tempInFahrenheit = newTempFahrenheit;
    condition = newCondition;
    notifyListeners();
  }
}
