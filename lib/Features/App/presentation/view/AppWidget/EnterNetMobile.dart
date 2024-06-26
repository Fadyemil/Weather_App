import 'package:flutter/material.dart';
import 'package:weather_app/core/utils/assets.dart';

class EnterNetMobile extends StatelessWidget {
  const EnterNetMobile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 150),
            Container(
              child: Image.asset(Assets.NetWorkData),
            ),
            Text(
              'connected to my phone data',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
