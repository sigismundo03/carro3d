import 'package:carro3d/app/src/home/modelView/listcarromodelview.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/card_carro.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViwerState createState() => _HomeViwerState();
}

class _HomeViwerState extends State<HomeView> {
  @override
  void initState() {
    super.initState();
    Provider.of<ListCarroModelView>(context, listen: false).fetchCars();
  }

  late final carros = Provider.of<ListCarroModelView>(context);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Loja de carros"),
        centerTitle: true,
      ),
      body: carros.status == Status.wait.toString()
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Column(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: GridView.builder(
                      itemCount: carros.car.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 0.70,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 20,
                      ),
                      itemBuilder: (context, index) => CardCarro(
                        item: carros.car[index],
                      ),
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}
