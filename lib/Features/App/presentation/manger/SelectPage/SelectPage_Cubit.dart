import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/Features/App/presentation/manger/SelectPage/SelectPage_State.dart';

class SelectPageCubit extends Cubit<SelectPageState> {
  SelectPageCubit() : super(SelectPageState(index: 0));

  void chage({required int index}) {
    emit(SelectPageInitial(index: index));
  }
}
