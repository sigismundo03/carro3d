import 'package:flutter/material.dart';

import 'widgets/card_carro.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViwerState createState() => _HomeViwerState();
}

class _HomeViwerState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lojas de carros"),
        centerTitle: true,
      ),
      body: const CardCarro(),
    );
  }
}
