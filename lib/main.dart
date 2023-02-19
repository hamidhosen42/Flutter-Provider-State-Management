// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_provider_state_management/home_screen.dart';
import 'package:flutter_provider_state_management/provider/count_provider.dart';
import 'package:flutter_provider_state_management/provider/example_one_provider.dart';
import 'package:flutter_provider_state_management/provider/favourite_provider.dart';
import 'package:flutter_provider_state_management/screens/examples/count_example.dart';
import 'package:flutter_provider_state_management/screens/examples/example_one.dart';
import 'package:flutter_provider_state_management/screens/examples/favourite_example/favourite_screen.dart';
import 'package:flutter_provider_state_management/statefull_widget_screen.dart';
import 'package:flutter_provider_state_management/why_provider.dart';
import 'package:provider/provider.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CountProvider()),
        ChangeNotifierProvider(create: (_) => ExampleOneProvider()),
        ChangeNotifierProvider(create: (_) => FavouriteItemProvider())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        // home: HomeScreen(),
        // home: StateFulWidget(),
        // home: WhyProviderScreen(),
        // home: CountExampleScreen(),
        // home: ExampleOneScreen(),
        home: FavouriteScreen(),
      ),
    );
  }
}

// return ChangeNotifierProvider(
//       // create: (_) => CountProvider(),//!Single provider
//       create: (_)=>ExampleOneProvider(),
//       child: MaterialApp(
//         debugShowCheckedModeBanner: false,
//         title: 'Flutter Demo',
//         theme: ThemeData(
//           primarySwatch: Colors.blue,
//         ),
//         // home: HomeScreen(),
//         // home: StateFulWidget(),
//         // home: WhyProviderScreen(),
//         // home: CountExampleScreen(),
//         home: ExampleOneScreen(),
//       ),
//     );