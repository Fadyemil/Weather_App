import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/Service/WeatherService.dart';
import 'package:weather_app/models/Weather_Model.dart';

part 'get_weather_state.dart';

class GetWeatherCubit extends Cubit<GetWeatherState> {
  GetWeatherCubit() : super(GetWeatherInitial());

  getWeather({required String cityName}) async {
    //! emit(NoWeatherState()); error
    try {
      WeatherModel weatherModel =
          await WeatherService(Dio()).getCurrentWeather(cityName: cityName);
      print('***********${weatherModel.location.name}***************');
      emit(WeatherLoadingState());
    } catch (e) {
      emit(WeatherFailureState(e.toString()));
    }
  }
}
