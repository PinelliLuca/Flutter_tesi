import 'package:flutter/material.dart';

class ShoppingCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping Cart'),
        backgroundColor: Colors.blueGrey[900],
      ),
      body: Container(
    child:  Image( image: AssetImage('assets/Gif/busta.gif'),
    ),
      ),


    );
  }
}
