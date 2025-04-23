import 'package:flutter/material.dart';

import '../weather_conditions.dart';
import 'big_temp.dart';
import 'space_needle_in_a_circle.dart';
import 'weather_condition_widget.dart';

class CurrentWeather extends StatelessWidget {
  const CurrentWeather({
    super.key,
    this.tempInFahrenheit = 42,
    this.condition = WeatherCondition.gloomy,
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
                BigTemp(tempInFahrenheit),
                WeatherConditionWidget(condition),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // TODO (you): Write this method
  Color _backgroundColorForCondition(WeatherCondition condition) {}
}
