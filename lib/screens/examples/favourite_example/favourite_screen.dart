// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings, avoid_print, unused_local_variable, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_provider_state_management/provider/favourite_provider.dart';
import 'package:flutter_provider_state_management/screens/examples/favourite_example/myfavouite.dart';
import 'package:provider/provider.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  // List<int> selectedItem = [];

  @override
  Widget build(BuildContext context) {
    // final provider = Provider.of<FavouriteItemProvider>(context);
    print("Build");
    return Scaffold(
      appBar: AppBar(
        title: Text("Favourite"),
        actions: [
          InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => MyFavouriiteItemScreen()));
              },
              child: Icon(Icons.favorite)),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 50,
              itemBuilder: (context, index) {
                return Consumer<FavouriteItemProvider>(
                    builder: (context, value, child) {
                  return ListTile(
                      onTap: () {
                        if (value.selectedItem.contains(index)) {
                          value.removeItem(index);
                        } else {
                          value.addItem(index);
                        }
                      },
                      title: Text("Item " + index.toString()),
                      trailing: Icon(value.selectedItem.contains(index)
                          ? Icons.favorite
                          : Icons.favorite_outline));
                });
              },
            ),
          )
        ],
      ),
    );
  }
}