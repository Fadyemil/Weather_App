import 'package:flutter/material.dart';
import 'package:weather_app/widget/NavigationBar.dart';

class Searchpage extends StatelessWidget {
  const Searchpage({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        bottomNavigationBar: KNavigationBar(
          onItemTapped: (int) {},
        ),
      ),
    );
  }
}
