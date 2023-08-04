import 'package:flutter/material.dart';
import 'package:hello_world/models/catalog.dart';
import 'package:hello_world/widgets/drawer.dart';

import '../widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  final int num = 100;
  final String name = "Hello";

  @override
  Widget build(BuildContext context) {
    List itemsList = List.generate(15, (index) => CatalogModel.products[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Catalogue",
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: itemsList.length,
          itemBuilder: (context, index) {
            return ItemWidget(item: itemsList[index]);
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
