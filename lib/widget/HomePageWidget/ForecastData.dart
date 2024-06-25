import 'package:flutter/material.dart';
import 'package:weather_app/widget/HomePageWidget/WeatherState.dart';
import 'package:weather_app/widget/HomePageWidget/Weekly_Forecast.dart';

class ForecastData extends StatelessWidget {
  const ForecastData({
    super.key,
    required this.screanHeight,
  });

  final double screanHeight;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 0,
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            child: Image.asset(
              'asstes/Image.png',
              fit: BoxFit.fill,
            ),
          ),
        ),
        WeatherState(screanHeight: screanHeight),
        Positioned(
          top: screanHeight * 0.32,
          child: Container(
            width: 390,
            height: 390,
            child: Image.asset('asstes/House.png'),
          ),
        ),
        Weekly_Forecast(
          screanHeight: screanHeight,
        ),
      ],
    );
  }
}
