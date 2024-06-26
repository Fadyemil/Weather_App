// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/core/utils/styles.dart';
import 'package:weather_app/Features/App/presentation/manger/get_weather/get_weather_cubit.dart';

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
              style: Styles.textstyle24_ExtraBold,
            ),
            Text(
                weatherModel.forecast.forecastday.first.avgtempC
                    .ceil()
                    .toString(),
                style: Styles.textstyle35_white),
            Text(weatherModel.current.condition.text,
                style: Styles.textstyle18.copyWith(
                  color: Color(0xffEBEBF5).withOpacity(0.5),
                )),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "H:${weatherModel.forecast.forecastday.first.maxtempC.ceil()}",
                  style: Styles.textstyle18_Build,
                ),
                SizedBox(width: 12),
                Text(
                    "L:${weatherModel.forecast.forecastday.first.mintempC.ceil()}",
                    style: Styles.textstyle18_Build),
              ],
            )
          ],
        ),
      ),
    );
  }
}
