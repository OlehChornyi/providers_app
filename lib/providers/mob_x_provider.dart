import 'package:mobx/mobx.dart';

// Include the generated part file
part 'mob_x_provider.g.dart';

// Create a store class for managing the counter state
class CounterStore = _CounterStore with _$CounterStore;

abstract class _CounterStore with Store {
  @observable
  int counter = 0;

  @action
  void increment() {
    counter++;
  }

  @action
  void decrement() {
    counter--;
  }
}
