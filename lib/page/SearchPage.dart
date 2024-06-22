// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:weather_app/widget/AppBarSearchPage.dart';
import 'package:weather_app/widget/DetailsWeather.dart';
import 'package:weather_app/widget/SearchWidget.dart';

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
        body: Container(
          margin: const EdgeInsets.all(8),
          child: Column(
            children: [
              SearchWidget(),
              Expanded(
                child: DetailsWeather(
                  screanHeight: screanHeight,
                  screanWidth: screanWidth,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

