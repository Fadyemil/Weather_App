import 'package:flutter/material.dart';
import 'package:weather_app/core/utils/styles.dart';

class Error_Search extends StatelessWidget {
  const Error_Search({
    super.key,
    required this.screanHeight,
    required this.screanWidth,
  });

  final double screanHeight;
  final double screanWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screanHeight,
      width: screanWidth,
      color: const Color(0xff2E335A),
      child: const Center(
        child: Text('opps ther was an error , please try again',
            style: Styles.textstyle22),
      ),
    );
  }
}
