import 'package:flutter_riverpod/flutter_riverpod.dart';

// A Riverpod provider to hold and manage the counter state
final counterProvider = StateNotifierProvider<CounterNotifier, int>((ref) {
  return CounterNotifier();
});

// CounterNotifier extends StateNotifier to manage counter state
class CounterNotifier extends StateNotifier<int> {
  CounterNotifier() : super(0);

  void increment() {
    state++;
  }

  void decrement() {
    state--;
  }
}
