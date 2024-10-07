import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:providers_app/providers/provider_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:providers_app/providers/riverpod_provider.dart';

//1. PROVIDER
// class ButtonsScreen extends StatelessWidget {
//2. RIVERPOD
class ButtonsScreen extends ConsumerWidget {
  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
            ElevatedButton(
                onPressed: () {
                  // context.read<CounterProvider>().increment();
                  ref.read(counterProvider.notifier).increment();

                  ;
                },
                child: const Text('Increment')),
            ElevatedButton(
                onPressed: () {
                  // context.read<CounterProvider>().decrement();
                  ref.read(counterProvider.notifier).decrement();
                },
                child: const Text('Decrement')),
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
