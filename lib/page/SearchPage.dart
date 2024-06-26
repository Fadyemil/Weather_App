// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/core/utils/styles.dart';
import 'package:weather_app/manger/get_weather/get_weather_cubit.dart';
import 'package:weather_app/widget/HomePageWidget/NoWeatherBody.dart';
import 'package:weather_app/widget/searchWidhet/AppBarSearchPage.dart';
// import 'package:weather_app/widget/searchWidhet/DetailsWeather.dart';
import 'package:weather_app/widget/searchWidhet/SearchData.dart';
// import 'package:weather_app/widget/searchWidhet/SearchWidget.dart';

class Searchpage extends StatelessWidget {
  const Searchpage({super.key});

  @override
  Widget build(BuildContext context) {
    final double screanHeight = MediaQuery.of(context).size.height;
    final double screanWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff2E335A),
        appBar: AppBarSearchPage(),
        body: BlocBuilder<GetWeatherCubit, GetWeatherState>(
          builder: (context, state) {
            if (state is GetWeatherInitial) {
              return NoWeatherBody();
            } else if (state is WeatherLoadingState) {
              return SearchData(
                  screanHeight: screanHeight, screanWidth: screanWidth);
            } else {
              return const Center(
                child: Text('opps ther was an error, please try again',
                    style: Styles.textstyle22),
              );
            }
          },
        ),
      ),
    );
  }
}
