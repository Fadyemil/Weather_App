import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/manger/Appcubit.dart';
import 'package:weather_app/manger/Appstate.dart';
import 'package:weather_app/widget/AppWidget/NavigationBar.dart';
import 'package:weather_app/widget/AppWidget/getPage.dart';

class ApplicationPage extends StatelessWidget {
  const ApplicationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocBuilder<SelectPageCubit, SelectPageState>(
        builder: (context, state) {
          return Scaffold(
            body: getPage((state.index)),
            bottomNavigationBar: Container(
              width: 430,
              height: 83,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: KNavigationBar(
                selectedIndex: state.index,
                onItemTapped: (int x) {
                  BlocProvider.of<SelectPageCubit>(context).chage(index: x);
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
