// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/Features/App/presentation/manger/get_weather/get_weather_cubit.dart';
import 'package:weather_app/Features/App/presentation/view/AppWidget/Error_Search.dart';
import 'package:weather_app/Features/Home/presentation/view/HomePageWidget/NoWeatherBody.dart';
// import 'package:flutter/rendering.dart';
import 'package:weather_app/Features/Home/presentation/view/HomePageWidget/WeatherInfoBody.dart';
// import 'package:weather_app/widget/HomePageWidget/WeatherState.dart';
// import 'package:weather_app/widget/searchWidhet/SearchWidget.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

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
              return WeatherInfoBody(screanHeight: screanHeight);
            } else {
              return Error_Search(
                  screanHeight: screanHeight, screanWidth: screanWidth);
            }
          },
        ),
      ),
    );
  }
}

