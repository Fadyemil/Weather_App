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
