import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providers_app/providers/provider_provider.dart';

class ButtonsScreen extends StatefulWidget {
  const ButtonsScreen({super.key});

  @override
  State<ButtonsScreen> createState() => _ButtonsScreenState();
}

class _ButtonsScreenState extends State<ButtonsScreen> {
  @override
  Widget build(BuildContext context) {
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
                  context.read<CounterProvider>().increment();
                  ;
                },
                child: const Text('Increment')),
            ElevatedButton(
                onPressed: () {
                  context.read<CounterProvider>().decrement();
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
