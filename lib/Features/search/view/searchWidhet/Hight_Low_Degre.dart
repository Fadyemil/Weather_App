import 'package:flutter/material.dart';
import 'package:weather_app/core/models/Weather_Model.dart';
import 'package:weather_app/core/utils/styles.dart';

class Hight_Low_Degre extends StatelessWidget {
  const Hight_Low_Degre({
    super.key,
    required this.weatherModel,
  });

  final WeatherModel weatherModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "H:${weatherModel.forecast.forecastday.first.maxtempC.ceil()}",
          style: Styles.textstyle18_Build,
        ),
        SizedBox(width: 12),
        Text(
          "L:${weatherModel.forecast.forecastday.first.mintempC.ceil()}",
          style: Styles.textstyle18_Build,
        ),
      ],
    );
  }
}
