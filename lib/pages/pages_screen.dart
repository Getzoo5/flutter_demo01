import 'package:flutter/material.dart';

class PagesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pages"),
        backgroundColor: Colors.yellow[600],
      ),
      body: Center(
          child: Text("Pages")
      )
    );
  }
}