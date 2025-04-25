import 'package:flutter/material.dart';

import '../weather_conditions.dart';
import 'big_temp.dart';
import 'space_needle_in_a_circle.dart';
import 'weather_condition_widget.dart';

class CurrentWeather extends StatelessWidget {
  const CurrentWeather({
    super.key,
    this.tempInFahrenheit = 62,
    this.condition = WeatherCondition.rainy,
  });

  final WeatherCondition condition;
  final int tempInFahrenheit;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColorForCondition(condition),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Container(height: 16),
                const Padding(
                  padding: EdgeInsets.all(16.0),
                ),
                const SpaceNeedleInACircle(),
                BigTemp(tempInFahrenheit: tempInFahrenheit),
                WeatherConditionWidget(condition),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Color _backgroundColorForCondition(WeatherCondition condition) {
    return switch (condition) {
      WeatherCondition.gloomy => Colors.grey,
      WeatherCondition.rainy => Colors.blueGrey,
      WeatherCondition.sunny => Colors.amber,
      WeatherCondition.unknown => Colors.white,
    };
  }
}
