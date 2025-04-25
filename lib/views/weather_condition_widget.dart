import 'package:flutter/material.dart';
import 'package:weather/weather_conditions.dart';

class WeatherConditionWidget extends StatelessWidget {
  const WeatherConditionWidget(this.condition, {super.key });

  final WeatherCondition condition;

  @override
  Widget build(BuildContext context) {
    IconData iconToShow;
    String textToShow;

    switch (condition) {
      case WeatherCondition.gloomy:
        iconToShow = Icons.cloud;
        textToShow = 'Gloomy';
        break;
      case WeatherCondition.rainy:
        iconToShow = Icons.umbrella_outlined;
        textToShow = 'Rainy';
      case WeatherCondition.sunny:
        iconToShow = Icons.sunny;
        textToShow = 'Sunny';
      case WeatherCondition.unknown:
        iconToShow = Icons.question_mark;
        textToShow = 'Unknown';
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(iconToShow),
        Text(
          textToShow,
          style: TextStyle(fontSize: 24),
        ),
      ]
    );
    
  }
}