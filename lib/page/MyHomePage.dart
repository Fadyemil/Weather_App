// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/manger/get_weather/get_weather_cubit.dart';
// import 'package:flutter/rendering.dart';
import 'package:weather_app/widget/HomePageWidget/WeatherInfoBody.dart';
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
              return Text('opps ther was an error');
            }
          },
        ),
      ),
    );
  }
}

class NoWeatherBody extends StatelessWidget {
  const NoWeatherBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('No weather body'),
    );
  }
}
