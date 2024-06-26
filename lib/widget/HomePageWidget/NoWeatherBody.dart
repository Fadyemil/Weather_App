import 'package:flutter/material.dart';
import 'package:weather_app/core/utils/styles.dart';

class NoWeatherBody extends StatelessWidget {
  const NoWeatherBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff2E335A),
      child: Center(
        child: Text(
          "The search was not completed 🤷‍♂️.\n Go and perform the search 🔍",
          style: Styles.textstyle24_white,
        ),
      ),
    );
  }
}
