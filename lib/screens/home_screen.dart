import 'package:flutter/material.dart';
import 'package:providers_app/screens/buttons_screen.dart';
// import 'package:provider/provider.dart';
// import 'package:providers_app/providers/provider_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:providers_app/providers/riverpod_provider.dart';

//1. PROVIDER
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//2. RIVERPOD
class MyHomePage extends ConsumerWidget {
  const MyHomePage({super.key});

  @override
  //1. PROVIDER
  // Widget build(BuildContext context) {
  //2. RIVERPOD
  Widget build(BuildContext context, WidgetRef ref) {
    // Listen to the counter state
    final counter = ref.watch(counterProvider);

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
          Text(
            //1. PROVIDER
            // '${counterProvider.counter}',
            //2. RIVERPOD
            'Counter: $counter',
            style: Theme.of(context).textTheme.headlineMedium,
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
