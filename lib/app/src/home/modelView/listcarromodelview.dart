import 'package:carro3d/app/src/home/model/carro_model.dart';
import 'package:flutter/material.dart';

class ListCarroModelView extends ChangeNotifier {
  late CarroModel listaCarro;
  late List<Map<String, dynamic>> list;

  Future<void> listCarro() async {
    Future.delayed(const Duration(seconds: 2));
  }
}
