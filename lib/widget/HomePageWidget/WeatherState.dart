// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/manger/get_weather/get_weather_cubit.dart';

class WeatherState extends StatelessWidget {
  const WeatherState({
    super.key,
    required this.screanHeight,
  });

  final double screanHeight;

  @override
  Widget build(BuildContext context) {
    var weatherModel = BlocProvider.of<GetWeatherCubit>(context).weatherModel;
    return Positioned(
      top: screanHeight * 0.1,
      child: Container(
        width: 390,
        height: 183,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              weatherModel.location.name,
              style: TextStyle(
                  color: Color(0xffFFFFFF),
                  fontSize: 24,
                  fontWeight: FontWeight.w800),
            ),
            Text(
              weatherModel.forecast.forecastday.first.avgtempC
                  .toInt()
                  .toString(),
              style: TextStyle(
                height: 1,
                color: Color(0xffFFFFFF),
                fontSize: 35,
                fontWeight: FontWeight.w900,
              ),
            ),
            Text(
              weatherModel.current.condition.text,
              style: TextStyle(
                fontFamily: 'Helvetica',
                color: Color(0xffEBEBF5).withOpacity(0.5),
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "H:${weatherModel.forecast.forecastday.first.maxtempC.toInt()}",
                  style: TextStyle(
                    color: Color(0xffFFFFFF),
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(width: 12),
                Text(
                  "L:${weatherModel.forecast.forecastday.first.mintempC.toInt()}",
                  style: TextStyle(
                    color: Color(0xffFFFFFF),
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
