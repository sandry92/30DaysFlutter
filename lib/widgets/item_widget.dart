import 'package:flutter/material.dart';
import 'package:hello_world/models/catalog.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text(
          "\$${item.price.toString()}",
          style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
          textScaleFactor: 1.5,
        ),
        onTap: () {
          print("${item.name} pressed");
        },
      ),
    );
  }
}
