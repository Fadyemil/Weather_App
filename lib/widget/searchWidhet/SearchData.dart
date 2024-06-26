import 'package:flutter/material.dart';
import 'package:weather_app/widget/searchWidhet/DetailsWeather.dart';

class SearchData extends StatelessWidget {
  const SearchData({
    super.key,
    required this.screanHeight,
    required this.screanWidth,
  });

  final double screanHeight;
  final double screanWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
     /* // decoration: BoxDecoration(
      //   gradient: LinearGradient(
      //     // begin: Alignment.topRight,
      //     // end: Alignment.topLeft,
      //     colors: [
      //       Color(0xff612FAB),
      //       Color(0xff612FAB),
      //       Color(0xff21213D),
      //       Color(0xff1C1B33),
      //     ],
      //   ),
      // ),*/
      child: Column(
        children: [
          // SearchWidget(),
          Expanded(
            child: DetailsWeather(
              screanHeight: screanHeight,
              screanWidth: screanWidth,
            ),
          )
        ],
      ),
    );
  }
}
