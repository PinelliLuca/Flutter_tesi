import 'package:flutter/material.dart';

class DressRoom extends StatefulWidget {
  @override
  _DressRoomState createState() => _DressRoomState();
}

class _DressRoomState extends State<DressRoom> {
  List<String> maglie = [
    "assets/images/maglia1.png",
    "assets/images/maglia2.jpeg",
    "assets/images/maglia1.png",
    // Aggiungi altre immagini se necessario
  ];

  List<String> pantaloni = [
    "assets/images/pantalone1-removebg.png",
    "assets/images/pantalone1.jpg",
    "assets/images/pantalone1-removebg.png",
    // Aggiungi altre immagini se necessario
  ];

  int indexMaglia = 0;
  int indexPantalone = 0;

  void nextMaglia() {
    setState(() {
      indexMaglia = (indexMaglia + 1) % maglie.length;
    });
  }

  void previousMaglia() {
    setState(() {
      indexMaglia = (indexMaglia - 1 + maglie.length) % maglie.length;
    });
  }

  void nextPantalone() {
    setState(() {
      indexPantalone = (indexPantalone + 1) % pantaloni.length;
    });
  }

  void previousPantalone() {
    setState(() {
      indexPantalone =
          (indexPantalone - 1 + pantaloni.length) % pantaloni.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dress Room'),
        backgroundColor: Colors.blueGrey[900],
      ),
      body: Column(
        children: [
          // Scritta Superiore
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Scegli le tue combinazioni',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          // Sezione Maglie
          Expanded(
            child: Row(
              children: [
                IconButton(
                  onPressed: previousMaglia,
                  icon: Icon(Icons.arrow_back),
                ),
                Expanded(
                  child: Image.asset(
                    maglie[indexMaglia],
                    width: double.infinity,
                  ),
                ),
                IconButton(
                  onPressed: nextMaglia,
                  icon: Icon(Icons.arrow_forward),
                ),
              ],
            ),
          ),
          // Sezione Pantaloni
          Expanded(
            child: Row(
              children: [
                IconButton(
                  onPressed: previousPantalone,
                  icon: Icon(Icons.arrow_back),
                ),
                Expanded(
                  child: Image.asset(
                    pantaloni[indexPantalone],
                    width: double.infinity,
                  ),
                ),
                IconButton(
                  onPressed: nextPantalone,
                  icon: Icon(Icons.arrow_forward),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
