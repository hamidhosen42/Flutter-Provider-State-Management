// ignore_for_file: avoid_print, prefer_const_constructors, avoid_unnecessary_containers, prefer_interpolation_to_compose_strings

import 'dart:async';

import 'package:flutter/material.dart';

class WhyProviderScreen extends StatefulWidget {
  const WhyProviderScreen({super.key});

  @override
  State<WhyProviderScreen> createState() => _WhyProviderScreenState();
}

class _WhyProviderScreenState extends State<WhyProviderScreen> {
  int count = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer.periodic(Duration(seconds: 1), (timer) {
      count++;
      // print(count);
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    print("Build" + count.toString());
    return Scaffold(
      appBar: AppBar(
        title: Text("Provider"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text(
             DateTime.now().hour.toString()+" : "+DateTime.now().minute.toString()+" : "+DateTime.now().second.toString(),
              style: TextStyle(fontSize: 50),
            ),
          ),
          Center(
            child: Text(
              count.toString(),
              style: TextStyle(fontSize: 50),
            ),
          )
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     setState(() {
      //        x++;
      //     });
      //     print(x);
      //   },
      //   child: Icon(Icons.add),
      // ),
    );
  }
}