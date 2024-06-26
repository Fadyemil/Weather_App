import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/Features/App/presentation/manger/SelectPage/SelectPage_Cubit.dart';
import 'package:weather_app/Features/App/presentation/manger/SelectPage/SelectPage_State.dart';
import 'package:weather_app/Features/App/presentation/view/AppWidget/NavigationBar.dart';
import 'package:weather_app/Features/App/presentation/view/AppWidget/getPage.dart';

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
