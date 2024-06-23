// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:weather_app/widget/HomePageWidget/WeatherState.dart';
import 'package:weather_app/widget/HomePageWidget/Weekly_Forecast.dart';

class Page_Forecast extends StatelessWidget {
  const Page_Forecast({super.key});

  @override
  Widget build(BuildContext context) {
    final double screanHeight = MediaQuery.of(context).size.height;
    final double screanWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Stack(
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
        ),
      ),
    );
  }
}
