// ignore_for_file: unused_local_variable, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/manger/get_weather/get_weather_cubit.dart';
import 'package:weather_app/models/Weather_Model.dart';

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
                width: 342,
                child: Container(
                  child: Image.asset('asstes/Rectangle 1.png'),
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
                child: Container(
                  width: 160,
                  height: 160,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        weatherModel.forecast.forecastday[index].date
                            .substring(5),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                        ),
                      ),
                      Text(
                        weatherModel.forecast.forecastday[index].avgtempC
                            .ceil()
                            .toString(),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            "H:${weatherModel.forecast.forecastday.first.maxtempC.ceil()}",
                            style: TextStyle(
                              color: Color(0xffFFFFFF),
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(width: 12),
                          Text(
                            "L:${weatherModel.forecast.forecastday.first.mintempC.ceil()}",
                            style: TextStyle(
                              color: Color(0xffFFFFFF),
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        weatherModel.location.name,
                        style: TextStyle(
                          color: Color(0xffFFFFFF),
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  dynamic Contion_image_state(WeatherModel weatherModel) {
    if (weatherModel.forecast.forecastday[0].condition.text == "Cloudy") {
      return "asstes/415.png";
    } else if (weatherModel.forecast.forecastday[0].condition.text == "Sunny") {
      return 'asstes/396.png';
    } else if (weatherModel.forecast.forecastday[0].condition.text ==
        "Partly Cloudy ") {
      return 'asstes/423.png';
    } else if (weatherModel.forecast.forecastday[0].condition.text ==
        "Overcast") {
      return 'asstes/415.png';
    } else if (weatherModel.forecast.forecastday[0].condition.text == "Mist") {
      return 'asstes/305.png';
    } else if (weatherModel.forecast.forecastday[0].condition.text ==
        "Patchy snow possible") {
      return 'asstes/415.png';
    } else {
      return 'asstes/113.png';
    }
  }
}
