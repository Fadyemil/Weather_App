import 'package:flutter/material.dart';
import 'package:weather_app/Features/Home/presentation/view/MyHomePage.dart';
import 'package:weather_app/Features/Forecast/presentation/view/Page_Forecast.dart';
import 'package:weather_app/Features/search/view/SearchPage.dart';

Widget getPage(int index) {
  switch (index) {
    case 0:
      return MyHomePage();
    case 1:
      return Page_Forecast();
    case 2:
      return Searchpage();
    default:
      return Container();
  }
}
