import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final int num = 100;
  final String name = "Hello";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          child: Text("$name, You are $num% happy...!!"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
