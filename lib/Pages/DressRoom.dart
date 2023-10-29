import 'package:flutter/material.dart';

class DressRoom extends StatefulWidget {
  @override
  _DressRoomState createState() => _DressRoomState();
}


class _DressRoomState extends State<DressRoom> {
  String currentMaglia = "";
  String currentPantalone = "";

  List<String> maglie = [];
  List<String> pantaloni = [];

  int indexMaglia = 0;
  int indexPantalone = 0;

  @override
  void initState() {
    super.initState();

    maglie = [
      "assets/images/camerino/maglia1.jpeg",
      "assets/images/camerino/maglia2.jpeg",
      "assets/images/camerino/maglia3.jpeg",
    ];

    pantaloni = [
      "assets/images/camerino/pantalone1.jpeg",
      "assets/images/camerino/pantalone2.jpeg",
      "assets/images/camerino/pantalone3.jpeg",
    ];

    // Imposta la maglia e il pantalone iniziali
    currentMaglia = maglie[indexMaglia];
    currentPantalone = pantaloni[indexPantalone];
  }

  void nextMaglia() {
    indexMaglia = (indexMaglia + 1) % maglie.length;
    currentMaglia = maglie[indexMaglia];
    setState(() {});
  }

  void previousMaglia() {
    indexMaglia = (indexMaglia - 1 + maglie.length) % maglie.length;
    currentMaglia = maglie[indexMaglia];
    setState(() {});
  }

  void nextPantalone() {
    indexPantalone = (indexPantalone + 1) % pantaloni.length;
    currentPantalone = pantaloni[indexPantalone];
    setState(() {});
  }

  void previousPantalone() {
    indexPantalone = (indexPantalone - 1 + pantaloni.length) % pantaloni.length;
    currentPantalone = pantaloni[indexPantalone];
    setState(() {});
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
          // ScrollView delle maglie
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: GestureDetector(
              onHorizontalDragEnd: (details) {
                if (details.primaryVelocity! > 0) {
                  nextMaglia();
                } else if (details.primaryVelocity! < 0) {
                  previousMaglia();
                }
              },
              child: Row(
                children: [
                  for (int i = 0; i < maglie.length; i++)
                    Image.asset(
                      maglie[i],
                      width: 100,
                    ),
                ],
              ),
            ),
          ),
          // ScrollView dei pantaloni
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: GestureDetector(
              onHorizontalDragEnd: (details) {
                if (details.primaryVelocity! > 0) {
                  nextPantalone();
                } else if (details.primaryVelocity! < 0) {
                  previousPantalone();
                }
              },
              child: Row(
                children: [
                  for (int i = 0; i < pantaloni.length; i++)
                    Image.asset(
                      pantaloni[i],
                      width: 100,
                    ),
                ],
              ),
            ),
          ),
          // Immagine del vestito attualmente selezionato
          Image.asset(
            "$currentMaglia-$currentPantalone",
          ),
        ],
      ),
    );
  }
}
