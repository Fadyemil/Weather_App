import 'package:flutter/material.dart';

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
              child: Image.asset(
                  'asstes/wifi-error-signal-offline-icon-off-vector-37642163.jpg'),
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
