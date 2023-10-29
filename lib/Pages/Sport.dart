import 'package:flutter/material.dart';
import 'DressRoom.dart';
import 'ShoppingCart.dart';

class Sport extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Sport'),
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart, color: Colors.black),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => ShoppingCart()));
            },
          ),
        ],
      ),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Image.asset('assets/images/runners.jpg'),
          ),
          Positioned(
            top: 20,
            left: -100,
            child: Container(
              width: 350,
              height: 350,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/womanrun-01.png'),
                ),
              ),
            ),
          ),
          // Scritta sport e abbigliamento sportivo
          Positioned(
            top: 20,
            left: 200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Sport',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Abbigliamento sportivo',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),

          Positioned(
            top: 400,
            left: 0,
            right: 0,
            bottom: 0,
            child: ListView(
              children: [
                ProductBox(
                  imagePath: 'assets/images/t-shirt.jpg',
                  title: 'T-shirt',
                  price: '€ 20.00',
                ),
                ProductBox(
                  imagePath: 'assets/images/pantaloncini.jpg',
                  title: 'Pantaloncini',
                  price: '€ 75.00',
                ),
                ProductBox(
                  imagePath: 'assets/images/mercurial.jpg',
                  title: 'Scarpe',
                  price: '€ 120.00',
                ),

                // Qui per aggiungere altri prodotti ma non ci perdere tempo
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ProductBox extends StatelessWidget {
  final String imagePath;
  final String title;
  final String price;

  ProductBox({
    required this.imagePath,
    required this.title,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DressRoom(),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.all(10),
        width: 150,
        height: 200,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imagePath),
          //  fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style: TextStyle(color: Colors.blue, fontSize: 25),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                price,
                style: TextStyle(color: Colors.blueGrey, fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
