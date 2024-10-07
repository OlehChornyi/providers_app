import 'package:flutter/material.dart';
import 'package:providers_app/screens/home_screen.dart';
// import 'package:provider/provider.dart';
// import 'package:providers_app/providers/provider_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:providers_app/providers/riverpod_provider.dart';

void main() {
  runApp(
    // 1. PROVIDER
    // MultiProvider(
    //   providers: [
    //     ChangeNotifierProvider(create: (_) => CounterProvider()),
    //   ],
    //2. RIVERPOD
    ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
      // home: const MyHomePage(title: 'Providers Demo Home Page'),
    );
  }
}
