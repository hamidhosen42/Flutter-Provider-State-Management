// ignore_for_file: prefer_const_constructors, unused_local_variable, prefer_interpolation_to_compose_strings

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_provider_state_management/provider/count_provider.dart';
import 'package:provider/provider.dart';

class CountExampleScreen extends StatefulWidget {
  const CountExampleScreen({super.key});

  @override
  State<CountExampleScreen> createState() => _CountExampleScreenState();
}

class _CountExampleScreenState extends State<CountExampleScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    final countProvider = Provider.of<CountProvider>(context, listen: false);
    Timer.periodic(Duration(seconds: 1), (timer) {
      countProvider.setCount();
    });
  }

  @override
  Widget build(BuildContext context) {
    final countProvider = Provider.of<CountProvider>(context, listen: false);
    // final countProvider1 = Provider.of<CountProvider>(context);
    print("build");
    return Scaffold(
      appBar: AppBar(
        title: Text("Provider"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Consumer<CountProvider>(builder: (context, value, child) {
            return Center(
                child: Text(
              value.count.toString(),
              style: TextStyle(fontSize: 50),
            ));
          }),
          // Center(
          //   child: Text(
          //     countProvider1.count.toString(),
          //     style: TextStyle(fontSize: 50),
          //   ),
          // )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          countProvider.setCount();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}