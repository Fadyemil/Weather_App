class SelectPageState {
  int index;
  SelectPageState({required this.index});
}

class SelectPageInitial extends SelectPageState {
  final int index;
  SelectPageInitial({required this.index}) : super(index: index);
}
