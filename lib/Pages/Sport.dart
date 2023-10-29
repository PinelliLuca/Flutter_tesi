import 'package:day16_shopping/Pages/DressRoom.dart';
import 'package:flutter/material.dart';
import 'DressRoom.dart';

class Sport extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sport'),
        backgroundColor: Colors.lightBlueAccent[900],
      ),
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.only(top: 70),
            height: 300,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/runners.jpg'),
                fit: BoxFit.fill,
              ),
            ),
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
          Container(
            width: MediaQuery.of(context).size.width,
            height: 100,
            margin: const EdgeInsets.only(top: 300, left: 200),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Sport",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Abbigliamento sportivo",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
Widget toDressRoom(BuildContext context, {image, title, tag}){
  return InkWell(
    onTap: (){
      Navigator.push(context, MaterialPageRoute(builder: (context) => DressRoom()));
    },
    child: Container(

    ),
  );
}