// import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/Features/App/presentation/manger/get_weather/get_weather_cubit.dart';
// import 'package:weather_app/Service/WeatherService.dart';
// import 'package:weather_app/models/Weather_Model.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 358,
      height: 36,
      decoration: const BoxDecoration(
        color: Color(0xff1C1B33),
        borderRadius: BorderRadius.all(Radius.circular(18)),
      ),
      child: TextField(
        onSubmitted: (value) async {
          var getWeatherCubit = BlocProvider.of<GetWeatherCubit>(context);
          getWeatherCubit.getWeather(cityName: value);
        },
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(18)),
          ),
          prefixIcon: Icon(
            Icons.search,
            color: Color(0xffEBEBF5).withOpacity(0.5),
          ),
          hintText: ' Search for a city or airport',
          hintStyle: TextStyle(
            color: Color(0xffEBEBF5).withOpacity(0.5),
          ),
        ),
      ),
    );
  }
}

// WeatherModel? weatherModel;
