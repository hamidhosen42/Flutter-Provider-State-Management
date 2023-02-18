// ignore_for_file: prefer_const_constructors, avoid_print, avoid_unnecessary_containers, must_be_immutable

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  int x = 0;

  @override
  Widget build(BuildContext context) {
    print("Hamid");
    return Scaffold(
      appBar: AppBar(
        title: Text("Provider"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: Center(
              child: Text(
                x.toString(),
                style: TextStyle(fontSize: 50),
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          x++;
          print(x);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
