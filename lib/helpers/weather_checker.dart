import 'dart:convert';
import 'package:weather/providers/weather_provider.dart';
import 'package:http/http.dart' as http;
import 'package:weather/weather_conditions.dart';

//ignore_for_file: avoid_print

class WeatherChecker {
  final WeatherProvider weatherProvider;
  final _latitude = '47.96649'; //Allen Center is here, per Google Maps
  final _longitude = '-122.34318';
  http.Client? client;

  WeatherChecker(this.weatherProvider, {this.client});

  Future<void> fetchAndUpdateCurrentSeattleWeather() async {
    try {
      final http.Client client = this.client ?? http.Client();
      final gridResponse = await client.get(
          Uri.parse('https://api.weather.gov/points/$_latitude,$_longitude'));
      final gridParsed = (jsonDecode(gridResponse.body));
      final String? forecastURL = gridParsed['properties']?['forecast'];
      if (forecastURL == null) {
        // do nothing
      } else {
        final weatherResponse = await client.get(Uri.parse(forecastURL));
        final weatherParsed = jsonDecode(weatherResponse.body);
        final currentPeriod = weatherParsed['properties']?['periods']?[0];
        if (currentPeriod != null) {
          final temperature = currentPeriod['temperature'];
          final shortForecast = currentPeriod['shortForecast'];
          print(
              'Got the weather at ${DateTime.now()}. $temperature F and $shortForecast');
          if (temperature != null && shortForecast != null) {
            final condition = _shortForecastToCondition(shortForecast);
            weatherProvider.updateWeather(temperature, condition);
          }
        }
      }
    } catch (_) {
      // If weather can not be updated, an error message will be printed
      print('Update weather failed');
    } finally {
      client?.close();
      client = null;
    }
  }

  WeatherCondition _shortForecastToCondition(String shortForecast) {
    final lowercased = shortForecast.toLowerCase();
    if (lowercased.startsWith('rain')) return WeatherCondition.rainy;
    if (lowercased.startsWith('sun') || lowercased.startsWith('partly')) {
      return WeatherCondition.sunny;
    }
    return WeatherCondition.gloomy;
  }
}
