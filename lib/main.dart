import 'package:flutter/material.dart';
import 'package:providers_app/screens/home_screen.dart';
// import 'package:provider/provider.dart';
// import 'package:providers_app/providers/provider_provider.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:providers_app/providers/riverpod_provider.dart';
// import 'package:get_it/get_it.dart';
// import 'package:providers_app/providers/get_it_provider.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:providers_app/providers/mob_x_provider.dart';

//3. GETIT
// Initialize GetIt
// final getIt = GetIt.instance;
// void setupLocator() {
//   getIt.registerLazySingleton<CounterService>(() => CounterService());
// }

void main() {
  // runApp(
  // 1. PROVIDER
  // MultiProvider(
  //   providers: [
  //     ChangeNotifierProvider(create: (_) => CounterProvider()),
  //   ],
  //2. RIVERPOD
  // ProviderScope(
  //   child: MyApp(),
  // ),
  //3. GETIT
  // setupLocator(); // Call this to set up the service locator
  //4. MOBX
  runApp(MyApp());
  // );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //4. MOBX
    return MultiProvider(
        providers: [
          Provider<CounterStore>(create: (_) => CounterStore()),
        ],
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: const MyHomePage(),
          // home: const MyHomePage(title: 'Providers Demo Home Page'),
        ));
  }
}
