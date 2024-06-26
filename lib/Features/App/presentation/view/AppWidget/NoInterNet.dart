import 'package:flutter/material.dart';
import 'package:weather_app/core/utils/assets.dart';

class NoInterNet extends StatelessWidget {
  const NoInterNet({
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
              child: Image.asset(Assets.offline),
            ),
            Text(
              'Internet connection failed',
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
