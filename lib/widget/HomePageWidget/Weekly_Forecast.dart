// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/manger/get_weather/get_weather_cubit.dart';

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
          color: Color(0xff2E335A),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12),
            topRight: Radius.circular(12),
          ),
        ),
        child: Column(
          children: [
            IconButton(
                onPressed: () {}, icon: Image.asset('asstes/Indicator.png')),
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
                            style: TextStyle(
                              color: selectedIndex == index
                                  ? const Color.fromARGB(204, 0, 0, 0)
                                  : Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          Image.asset('asstes/Weather_Icon.png'),
                          Text(
                            weatherModel
                                .forecast.forecastday[0].hour[index].tempC
                                .toInt()
                                .toString(),
                            style: TextStyle(
                              color: selectedIndex == index
                                  ? const Color.fromARGB(204, 0, 0, 0)
                                  : Colors.white,
                              fontSize: 16,
                            ),
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
}
