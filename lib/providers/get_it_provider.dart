import 'package:flutter/material.dart';

class CounterService extends ChangeNotifier {
  // int _counter = 0;

  // int get counter => _counter;

  final ValueNotifier<int> _counter = ValueNotifier<int>(0);

  ValueNotifier<int> get counter => _counter;

  void increment() {
    _counter.value++;
    notifyListeners();
  }

  void decrement() {
    _counter.value--;
    notifyListeners();
  }
}
