import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather/providers/weather_provider.dart';

import '../weather_conditions.dart';
import 'big_temp.dart';
import 'space_needle_in_a_circle.dart';
import 'weather_condition_widget.dart';

// Displays and updates the weather data provided by WeatherProvider
class CurrentWeather extends StatelessWidget {
  const CurrentWeather({
    super.key
  });
    
  
  @override
  Widget build(BuildContext context) {
    // Using consumer to fetch the weather data from WeatherProvider
    return Consumer<WeatherProvider>(
      builder: (context, weatherProvider, child) {
        return Scaffold(
          // Sets the background color based off the current weather condition
          backgroundColor: _backgroundColorForCondition(weatherProvider.condition),
          body: SafeArea(
            // Checking the loading state and displaying the screen
            child: weatherProvider.isLoading
                ? SingleChildScrollView(
                  // Display the weather information once the data is loaded
                    child: Center(
                      child: Column(
                        children: [
                          const SizedBox(height: 16),
                          // Image of space needle displayed
                          const SpaceNeedleInACircle(),
                          // Current temperature displayed
                          BigTemp(tempInFahrenheit: weatherProvider.tempInFahrenheit),
                          // Icon and text of current weather displayed
                          WeatherConditionWidget(weatherProvider.condition),
                        ],
                      ),
                    ),
                  )
                : const Center(
                  // Message displayed when weather data is being fetched
                    child: Text(
                      'Loading weather data...',
                      style: TextStyle(
                        fontSize: 24, 
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
          ),
        );
      },
    );
  }

  // Sets the background color of the widget based off the weather condition
  // Parameters:
  // - condition: The current weather condition
  // Returns:
  // A color value representing the different types of weather condition
  Color _backgroundColorForCondition(WeatherCondition condition) {
    return switch (condition) {
      WeatherCondition.gloomy => const Color.fromRGBO(214, 214, 214, 1.0),
      WeatherCondition.rainy => const Color.fromRGBO(160, 196, 255, 10.0),
      WeatherCondition.sunny => const Color.fromRGBO(255, 213, 79, 1.0),
      WeatherCondition.unknown => Colors.white,
    };
  }
}
