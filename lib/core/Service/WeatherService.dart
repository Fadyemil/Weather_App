// ignore_for_file: unused_local_variable

import 'package:dio/dio.dart';
import 'package:weather_app/core/constants/constants.dart';
import 'package:weather_app/core/models/Weather_Model.dart';

class WeatherService {
  final Dio dio;
  WeatherService(this.dio);

  

  Future<WeatherModel> getCurrentWeather({required String cityName}) async {
    try {
      Response response = await dio.get(
          '$baseUrl/forecast.json?key=$ApiKey&q=$cityName&days=7&aqi=no&alerts=no');
      // print(response);
      WeatherModel weatherModel = WeatherModel.fromJson(response.data);
      return weatherModel;
    } on DioException catch (e) {
      final String errorMessage = e.response?.data['error']['message'] ??
          'oops there was an error, please try again';
      throw Exception(errorMessage);
    } catch (e) {
      throw Exception(
          'oops there was an error, please try again .🤷‍♂️🤷‍♂️🤷‍♂️${e.toString()}');
    }
  }
}
