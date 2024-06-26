import 'package:flutter/material.dart';
import 'package:weather_app/Features/search/view/searchWidhet/SearchWidget.dart';

AppBar AppBarSearchPage() {
  return AppBar(
    backgroundColor: Colors.transparent,
    
    actions: [
      SearchWidget(),
      IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.linear_scale_outlined,
          color: Colors.white,
        ),
      ),
    ],
  );
}
