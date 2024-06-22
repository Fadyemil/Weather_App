import 'package:flutter/material.dart';
import 'package:weather_app/widget/AppBarSearchPage.dart';
import 'package:weather_app/widget/SearchWidget.dart';

class Searchpage extends StatelessWidget {
  const Searchpage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color(0xff2E335A),
          appBar: AppBarSearchPage(),
          body: Container(
            margin: const EdgeInsets.all(8),
            child: Column(
              children: [
                SearchWidget(),
              ],
            ),
          )),
    );
  }
}
