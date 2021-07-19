import 'package:flutter/material.dart';
import 'package:flutter_cube/flutter_cube.dart';

class Teste extends StatefulWidget {
  const Teste({Key? key}) : super(key: key);

  @override
  _TesteState createState() => _TesteState();
}

class _TesteState extends State<Teste> {
  late Object shark;
  @override
  void initState() {
    shark = Object(fileName: "assets/carro/alpha_romao.obj");
    shark.rotation.setValues(0, 90, 0);
    shark.updateTransform();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Cube(
          onSceneCreated: (Scene scene) {
            scene.world.add(shark);
            scene.camera.zoom = 10;
          },
        ),
      ),
    );
  }
}
