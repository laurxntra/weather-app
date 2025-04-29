import 'package:flutter/material.dart';
import 'package:weather/weather_conditions.dart';

// Displays the current weather condition using icons and description
// Parameters:
// - condition: Indicates the current weather conditions
// Returns:
// A weather icon and its description
class WeatherConditionWidget extends StatelessWidget {
  const WeatherConditionWidget(this.condition, {super.key });

  // current weather condition to be displayed
  final WeatherCondition condition;

  @override
  Widget build(BuildContext context) {
    // Variables to hold the icon and text for the current weather conditions
    IconData iconToShow;
    String textToShow;

    // Selecting the appropriate icon and text based off the WeatherCondition
    switch (condition) {
      // for cloudy, icon will show clouds and text will read Gloomy
      case WeatherCondition.gloomy:
        iconToShow = Icons.cloud;
        textToShow = 'Gloomy';
        break;
      // for rainy, icon will show umbrella and text will read rainy
      case WeatherCondition.rainy:
        iconToShow = Icons.umbrella_outlined;
        textToShow = 'Rainy';
        break;
      // for sunny, icon will show a sun and text will read sunny
      case WeatherCondition.sunny:
        iconToShow = Icons.sunny;
        textToShow = 'Sunny';
        break;
      // for other cases, icon will be a question mark and text will read unknown
      case WeatherCondition.unknown:
        iconToShow = Icons.question_mark;
        textToShow = 'Unknown';
        break;
    }

    return Semantics(
      // Provides a descriptive label for screen readers that will update them on the weather
      // condition
      label: 'Current weather condition is $textToShow.',
      // Only allowing the semantics label to be read
      excludeSemantics: true,
      child: Row(
        // center the weather icon and text
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // displays icon
          Icon(iconToShow),
          // displays text
          Text(
            textToShow,
            style: TextStyle(fontSize: 24),
          ),
        ]
      ),
    );
  }
}