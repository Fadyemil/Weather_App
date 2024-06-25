// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/manger/get_weather/get_weather_cubit.dart';
import 'package:weather_app/widget/HomePageWidget/ForecastData.dart';
import 'package:weather_app/widget/HomePageWidget/NoWeatherBody.dart';

class Page_Forecast extends StatelessWidget {
  const Page_Forecast({super.key});

  @override
  Widget build(BuildContext context) {
    final double screanHeight = MediaQuery.of(context).size.height;
    final double screanWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: BlocBuilder<GetWeatherCubit, GetWeatherState>(
          builder: (context, state) {
            if (state is GetWeatherInitial) {
              return NoWeatherBody();
            } else if (state is WeatherLoadingState) {
              return ForecastData(screanHeight: screanHeight);
            } else {
              return Text('opps ther was an error');
            }
          },
        ),
      ),
    );
  }
}
