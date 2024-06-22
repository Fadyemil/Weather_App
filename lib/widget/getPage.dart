import 'package:flutter/material.dart';
import 'package:weather_app/page/MyHomePage.dart';
import 'package:weather_app/page/Page_Forecast.dart';
import 'package:weather_app/page/SearchPage.dart';

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
