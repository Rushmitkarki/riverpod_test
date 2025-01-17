import 'package:flutter_riverpod/flutter_riverpod.dart';

// Provider
final counterViewModelProvider =
    StateNotifierProvider<CounterViewModel, int>((ref) {
  return CounterViewModel();
});

class CounterViewModel extends StateNotifier<int> {
  CounterViewModel() : super(0);

  void increment() {
    state++;
  }

  void decrement() {
    if (state == 0) {
      return;
    }
    state--;
  }
}