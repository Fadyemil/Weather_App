import 'package:connectivity_plus/connectivity_plus.dart';
// import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/Application.dart';
import 'package:weather_app/manger/SelectPage/SelectPage_Cubit.dart';
import 'package:weather_app/manger/get_weather/get_weather_cubit.dart';
import 'package:weather_app/widget/AppWidget/EnterNetMobile.dart';
import 'package:weather_app/widget/AppWidget/NoInterNet.dart';
// import 'package:weather_app/page/MyHomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    CheckConnectivity();
  }

  void CheckConnectivity() async {
    var result = await Connectivity().checkConnectivity();
    print(result);
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) {
            return SelectPageCubit();
          },
        ),
        BlocProvider(
          create: (context) {
            return GetWeatherCubit();
          },
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: StreamBuilder<ConnectivityResult>(
            stream: Connectivity().onConnectivityChanged,
            builder: (context, snapshot) {
              final connectivityResult = snapshot.data;
              if (connectivityResult == ConnectivityResult.none) {
                return NoInterNet();
              }
              if (connectivityResult == ConnectivityResult.mobile) {
                return EnterNetMobile();
              } else if (snapshot.connectionState == ConnectionState.active) {
                return ApplicationPage();
              } else {
                return NoInterNet();
              }
            }),
      ),
    );
  }
}
