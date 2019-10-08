import 'package:flutter/material.dart';

class EmailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Email"),
        backgroundColor: Colors.yellow[600],
      ),
      body: Center(
          child: Text("Email")
      )
    );
  }
}