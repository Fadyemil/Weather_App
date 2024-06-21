import 'package:flutter/material.dart';
import 'package:weather_app/page/MyHomePage.dart';
import 'package:weather_app/page/SearchPage.dart';

Widget getPage(int index) {
  switch (index) {
    case 0:
      return MyHomePage();
    case 1:
      return Searchpage();
    default:
      return Container();
  }
}
