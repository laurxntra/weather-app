import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather/providers/weather_provider.dart';
import './views/current_weather.dart';

void main() {
  runApp(WeatherApp());
}

/// Class that contains the whole Weather app
class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  /// Builds the widget tree for the Weather app
  /// Parameters:
  /// - BuildContext context - The widget that will become the parents of this widget tree once built
  /// Returns: A MaterialApp widget that contains the Weather image, temperature, and condition
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => WeatherProvider(),
      child: MaterialApp(
        theme: ThemeData(primaryColor: Colors.white),
        home: const CurrentWeather(),
      ),
    );
  }
}
