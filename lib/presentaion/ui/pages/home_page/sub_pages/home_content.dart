import 'package:flutter/material.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: Text("Mouse"),
          subtitle: Text("A4tech Wireless Mouse"),
          leading: Icon(Icons.mouse),
        ),
        ListTile(
          title: Text("Laptop"),
          subtitle: Text("AMD Ryzen 7 Processor"),
          leading: Icon(Icons.laptop),
        ),
      ],
    );
  }
}
