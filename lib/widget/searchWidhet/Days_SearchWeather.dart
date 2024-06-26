import 'package:flutter/material.dart';
import 'package:weather_app/core/models/Weather_Model.dart';
import 'package:weather_app/core/utils/styles.dart';
import 'package:weather_app/widget/searchWidhet/Hight_Low_Degre.dart';

class Days_SearchWeather extends StatelessWidget {
  const Days_SearchWeather({
    super.key,
    required this.weatherModel,
    required this.index,
  });

  final WeatherModel weatherModel;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      height: 160,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            weatherModel.forecast.forecastday[index].date.substring(5),
            style: Styles.textstyle24,
          ),
          Text(
            weatherModel.forecast.forecastday[index].avgtempC.ceil().toString(),
            style: Styles.textstyle35,
          ),
          Hight_Low_Degre(weatherModel: weatherModel),
          Text(
            weatherModel.location.name,
            style: Styles.textstyle18_Build,
          )
        ],
      ),
    );
  }
}
