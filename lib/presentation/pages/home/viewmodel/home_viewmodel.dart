import 'package:riverpod/riverpod.dart';

class HomeViewModel extends Notifier<int> {
  HomeViewModel() : super();

  void incrementCounter() {
    state = state + 1;
  }

  @override
  int build() {
    return 0;
  }
}

final homeViewModelProvider = Provider<HomeViewModel>((ref) => HomeViewModel());
