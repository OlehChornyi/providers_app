import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:providers_app/screens/buttons_screen.dart';
// import 'package:provider/provider.dart';
// import 'package:providers_app/providers/provider_provider.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:providers_app/providers/riverpod_provider.dart';
// import 'package:get_it/get_it.dart';
// import 'package:providers_app/providers/get_it_provider.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:providers_app/providers/mob_x_provider.dart';

//1. PROVIDER
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//2. RIVERPOD
// class MyHomePage extends ConsumerWidget {
//3. GETIT
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  //1. PROVIDER
  // Widget build(BuildContext context) {
  //2. RIVERPOD
  // Widget build(BuildContext context, WidgetRef ref) {
  // Listen to the counter state
  // final counter = ref.watch(counterProvider);
  //3. GETIT
  Widget build(BuildContext context) {
    // Get an instance of CounterService
    // final counterService = GetIt.I<CounterService>();
    //4. MOBX
    final counterStore = Provider.of<CounterStore>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Counter Screen'),
        // title: Text(widget.title),
      ),
      //1. PROVIDER
      // body: Center(
      //   child: Consumer<CounterProvider>(
      //     builder: (context, counterProvider, child) {
      //       return Column(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            'The current number is:',
          ),
          // Text(
          // //   //1. PROVIDER
          // //   // '${counterProvider.counter}',
          // //   //2. RIVERPOD
          // //   'Counter: $counter',
          //           //3. GETIT
          // '${counterService.counter}',
          //   style: Theme.of(context).textTheme.headlineMedium,
          // ),
          //3. GETIT
          // ValueListenableBuilder<int>(
          //   valueListenable:
          //       counterService.counter, // Listen to changes in counter
          //   builder: (context, counter, _) {
          //     return Text(
          //       'Counter: ${counter}',
          //       style: TextStyle(fontSize: 36),
          //     );
          //   },
          // ),
          Observer(
            builder: (_) {
              return Text(
                'Counter: ${counterStore.counter}',
                style: TextStyle(fontSize: 36),
              );
            },
          ),
        ],
        //   );
        // },
        // ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) => ButtonsScreen(),
            ),
          );
        },
        tooltip: 'Increment-Decrement',
        child: const Icon(Icons.calculate),
      ),
    );
  }
}
