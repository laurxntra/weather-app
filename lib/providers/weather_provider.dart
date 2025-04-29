import 'package:flutter/material.dart';
import 'package:weather/helpers/weather_checker.dart';
import 'package:weather/weather_conditions.dart';
import 'dart:async';

// Manages the weather data for the application; showcases temperature and current condtions
class WeatherProvider extends ChangeNotifier {
  // current temp in fahrenheit
  int tempInFahrenheit = 0;
  // Current weather condition (sunny, gloomy, rainy, unknown)
  WeatherCondition condition = WeatherCondition.unknown;
  // Helper class for fetching the weather data
  late final WeatherChecker _weatherChecker;
  // Checks if app is fetching weather data or not
  bool isLoading = false;

  // Initalizes the WeatherChecker and sets up the updates
  WeatherProvider() {
    _weatherChecker = WeatherChecker(this);
    _weatherUpdates();
  }

  // Handles fetching the weather updates
  void _weatherUpdates() {
    // Fetch weather data when app starts
    _weatherChecker.fetchAndUpdateCurrentSeattleWeather();

    // Fetch weather data and updates it every minute
    Timer.periodic(const Duration(minutes: 1), (_) {
      _weatherChecker.fetchAndUpdateCurrentSeattleWeather();
    });
  }

  // Updates the weather data and notifies the app for changes
  // Parameters:
  // - newTempFahrenheit: The updated temperature in fahrenheit
  // - newCondition: The updated weather condition
  updateWeather(int newTempFahrenheit, WeatherCondition newCondition) {
    // updates the temperature
    tempInFahrenheit = newTempFahrenheit;
    // updates the condition
    condition = newCondition;
    // indicates that the data needs to be refreshed
    isLoading = true;
    // notifies the app to update
    notifyListeners();
  }
}
