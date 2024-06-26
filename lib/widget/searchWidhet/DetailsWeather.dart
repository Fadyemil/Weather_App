// ignore_for_file: unused_local_variable, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/core/utils/assets.dart';
// import 'package:weather_app/core/utils/styles.dart';
import 'package:weather_app/manger/get_weather/get_weather_cubit.dart';
// import 'package:weather_app/core/models/Weather_Model.dart';
import 'package:weather_app/widget/searchWidhet/Days_SearchWeather.dart';
// import 'package:weather_app/widget/searchWidhet/Hight_Low_Degre.dart';

class DetailsWeather extends StatelessWidget {
  const DetailsWeather(
      {super.key, required this.screanHeight, required this.screanWidth});

  final double screanHeight;
  final double screanWidth;

  @override
  Widget build(BuildContext context) {
    var weatherModel = BlocProvider.of<GetWeatherCubit>(context).weatherModel;
    return ListView.builder(
      itemCount: weatherModel.forecast.forecastday.length,
      itemBuilder: (context, index) {
        return Container(
          height: 270,
          child: Stack(
            children: [
              Positioned(
                top: screanHeight * 0.05,
                left: 0,
                height: 184,
                width: screanWidth * 0.9,
                child: Container(
                  // width: 400,
                  child: Image.asset(
                    Assets.assetsImageRectangle1,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Positioned(
                top: screanHeight * 0.01,
                left: screanWidth * 0.5,
                child: Container(
                  width: 160,
                  height: 160,
                  child: Image.asset(
                    Contion_image_state(weatherModel),
                  ),
                ),
              ),
              Positioned(
                top: screanHeight * 0.07,
                left: screanWidth * 0.1,
                child: Days_SearchWeather(
                  weatherModel: weatherModel,
                  index: index,
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  
}

