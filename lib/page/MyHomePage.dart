// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:weather_app/widget/WeatherState.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final double screanHeight = MediaQuery.of(context).size.height;
    final double screanWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Positioned(
              top: 0,
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                child: Image.asset(
                  'asstes/Image.png',
                  fit: BoxFit.fill,
                ),
              ),
            ),
            WeatherState(screanHeight: screanHeight),
            Positioned(
              top: screanHeight * 0.32,
              child: Container(
                width: 390,
                height: 390,
                child: Image.asset('asstes/House.png'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
