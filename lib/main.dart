

import 'package:connectivity_plus/connectivity_plus.dart';
// import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/Application.dart';
import 'package:weather_app/manger/Appcubit.dart';
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
        )
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
              if (connectivityResult ==  ConnectivityResult.none) {
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
              child: Image.asset('asstes/images.png'),
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
