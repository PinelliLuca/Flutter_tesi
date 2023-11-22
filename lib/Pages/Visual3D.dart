import 'package:flutter/material.dart';
import 'package:o3d/o3d.dart';

class Visual3D extends StatelessWidget {
  O3DController controller = O3DController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(Icons.arrow_back)),
          title: Text("O3D"),
          backgroundColor: Colors.blueGrey[900],
          actions: [
            IconButton(
              onPressed: () => controller.cameraOrbit(20, 20, 5),
              icon: const Icon(Icons.change_circle),
            ),
            IconButton(
              onPressed: () => controller.cameraTarget(1.2, 1, 4),
              icon: const Icon(Icons.change_circle_outlined),
            ),

          ],
        ),
        body: O3D(
          controller: controller,
          src: 'assets/images/milan-3d.glb',
        ),
      ),
    );
  }
}
