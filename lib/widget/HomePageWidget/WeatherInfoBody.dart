import 'package:flutter/material.dart';
import 'package:weather_app/core/utils/assets.dart';
import 'package:weather_app/widget/HomePageWidget/WeatherState.dart';

class WeatherInfoBody extends StatelessWidget {
  const WeatherInfoBody({
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
              Assets.HomeImage,
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
            child: Image.asset(Assets.assetsImageHouse),
          ),
        ),
      ],
    );
  }
}
