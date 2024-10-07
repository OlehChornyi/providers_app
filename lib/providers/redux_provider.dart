import 'package:redux/redux.dart';

// Create the store
final store = Store<int>(counterReducer, initialState: 0);

class IncrementAction {}

class DecrementAction {}

int counterReducer(int state, dynamic action) {
  if (action is IncrementAction) {
    return state + 1;
  } else if (action is DecrementAction) {
    return state - 1;
  }
  return state;
}
