import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:providers_app/providers/provider_provider.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:providers_app/providers/riverpod_provider.dart';
// import 'package:get_it/get_it.dart';
// import 'package:providers_app/providers/get_it_provider.dart';
// import 'package:provider/provider.dart';
// import 'package:providers_app/providers/mob_x_provider.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:providers_app/providers/redux_provider.dart';

//1. PROVIDER
// class ButtonsScreen extends StatelessWidget {
//2. RIVERPOD
// class ButtonsScreen extends ConsumerWidget {
//3. GETIT
class ButtonsScreen extends StatelessWidget {
  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Get an instance of CounterService
    // final counterService = GetIt.I<CounterService>();
    //4. MOBX
        // final counterStore = Provider.of<CounterStore>(context);


    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Buttons Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Choose what to do: increment or decrement',
            ),
            // ElevatedButton(
                // onPressed: () {
                //1. PROVIDER
                // context.read<CounterProvider>().increment();
                //2. RIVERPOD
                // ref.read(counterProvider.notifier).increment();
                //   ;
                // },
                //3. GETIT
                // onPressed: counterService.increment,
                //4. MOBX
            //     onPressed: counterStore.increment, 
            //     child: const Text('Increment')),
            // ElevatedButton(
                // onPressed: () {
                //1. PROVIDER
                // context.read<CounterProvider>().decrement();
                //2. RIVERPOD
                // ref.read(counterProvider.notifier).decrement();
                // },
                //3. GETIT
                // onPressed: counterService.decrement,
                // 4. MOBX
                // onPressed: counterStore.decrement,
                // child: const Text('Decrement')),
                //5. REDUX
                StoreConnector<int, VoidCallback>(
              converter: (store) {
                return () => store.dispatch(IncrementAction()); // Dispatch increment
              },
              builder: (context, incrementCallback) {
                return ElevatedButton(
                  onPressed: incrementCallback,
                  child: Text('Increment'),
                );
              },
            ),
            SizedBox(width: 20),
            StoreConnector<int, VoidCallback>(
              converter: (store) {
                return () => store.dispatch(DecrementAction()); // Dispatch decrement
              },
              builder: (context, decrementCallback) {
                return ElevatedButton(
                  onPressed: decrementCallback,
                  child: Text('Decrement'),
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        tooltip: 'Increment',
        child: const Icon(Icons.arrow_back),
      ),
    );
  }
}
