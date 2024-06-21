import 'package:flutter/material.dart';

class WeatherState extends StatelessWidget {
  const WeatherState({
    super.key,
    required this.screanHeight,
  });

  final double screanHeight;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: screanHeight * 0.1,
      child: Container(
        width: 390,
        height: 183,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Montreal',
              style: TextStyle(
                  color: Color(0xffFFFFFF),
                  fontSize: 24,
                  fontWeight: FontWeight.w800),
            ),
            const Text(
              '19°',
              style: TextStyle(
                height: 1,
                color: Color(0xffFFFFFF),
                fontSize: 35,
                fontWeight: FontWeight.w900,
              ),
            ),
            Text(
              'Mostly Clear',
              style: TextStyle(
                fontFamily: 'Helvetica',
                color: Color(0xffEBEBF5).withOpacity(0.5),
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            const Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "H:24",
                  style: TextStyle(
                    color: Color(0xffFFFFFF),
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(width: 12),
                Text(
                  "L:18",
                  style: TextStyle(
                    color: Color(0xffFFFFFF),
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
