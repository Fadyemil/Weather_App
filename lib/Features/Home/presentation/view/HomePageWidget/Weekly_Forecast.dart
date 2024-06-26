// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/core/utils/assets.dart';
import 'package:weather_app/Features/App/presentation/manger/get_weather/get_weather_cubit.dart';

class Weekly_Forecast extends StatefulWidget {
  const Weekly_Forecast({super.key, required this.screanHeight});
  final double screanHeight;

  @override
  State<Weekly_Forecast> createState() => _Weekly_ForecastState();
}

class _Weekly_ForecastState extends State<Weekly_Forecast> {
  int selectedIndex = -1; // Declare as a member variable

  @override
  Widget build(BuildContext context) {
    var weatherModel = BlocProvider.of<GetWeatherCubit>(context).weatherModel;
    return Positioned(
      top: widget.screanHeight * 0.5,
      left: 0,
      height: 590,
      width: MediaQuery.sizeOf(context).width,
      child: Container(
        width: MediaQuery.sizeOf(context).width,
        decoration: const BoxDecoration(
          // color: Color(0xff2E335A),
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.topLeft,
            colors: [
              Color(0xff2E335A),
              // Color(0xff252747),
              // Color(0xff21213D),
              Color(
                0xff1C1B33,
              ),
            ],
          ),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12),
            topRight: Radius.circular(12),
          ),
        ),
        child: Column(
          children: [
            IconButton(
                onPressed: () {}, icon: Image.asset(Assets.Indicator)),
            Container(
              // margin: EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Hourly Forecast',
                    style: TextStyle(
                      color: Color(0xffEBEBF5).withOpacity(0.5),
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    'Weekly Forecast',
                    style: TextStyle(
                      color: Color(0xffEBEBF5).withOpacity(0.5),
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(8),
              width: 350,
              height: 146,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: weatherModel.forecast.forecastday[0].hour.length,
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    child: Container(
                      height: 146,
                      width: 60,
                      margin: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: selectedIndex == index
                            ? Color(0xff40CBD8)
                            : const Color(0xff48319D),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            weatherModel
                                .forecast.forecastday[0].hour[index].time
                                .substring(11, 16),
                            style: textstyle16(index),
                          ),
                          Image.network(
                              "https:${weatherModel.forecast.forecastday[0].hour[index].condition.icon}"),
                          Text(
                            weatherModel
                                .forecast.forecastday[0].hour[index].tempC
                                .ceil()
                                .toString(),
                            style: textstyle16(index),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  TextStyle textstyle16(int index) {
    return TextStyle(
      color: selectedIndex == index
          ? const Color.fromARGB(204, 0, 0, 0)
          : Colors.white,
      fontSize: 16,
    );
  }
}
