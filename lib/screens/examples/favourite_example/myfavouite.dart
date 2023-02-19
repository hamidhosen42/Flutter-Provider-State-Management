// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../provider/favourite_provider.dart';

class MyFavouriiteItemScreen extends StatefulWidget {
  const MyFavouriiteItemScreen({super.key});

  @override
  State<MyFavouriiteItemScreen> createState() => _MyFavouiriteItemScreenState();
}

class _MyFavouiriteItemScreenState extends State<MyFavouriiteItemScreen> {
  @override
  Widget build(BuildContext context) {
     final provider = Provider.of<FavouriteItemProvider>(context);

    print("Build");
    return Scaffold(
      appBar: AppBar(
        title: Text("Favourite Area"),
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
              itemCount: provider.selectedItem.length,
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