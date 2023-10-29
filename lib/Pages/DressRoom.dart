import 'package:flutter/material.dart';

class DressRoom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dress Room'),
        backgroundColor: Colors.blueGrey[900],
      ),
      body: Container(
        child: Image(
          image: AssetImage('assets/images/hat.jpeg'),
        ),
      ),
    );
  }
}
