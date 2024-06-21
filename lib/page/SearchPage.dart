import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:weather_app/manger/Select_cubit.dart';
// import 'package:weather_app/manger/Select_state.dart';
// import 'package:weather_app/widget/NavigationBar.dart';

class Searchpage extends StatelessWidget {
  const Searchpage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Search"),
        ),
        body: Center(
          child: Text("Search"),
        ),
      ),
    );
  }
}
