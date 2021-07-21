import 'package:carro3d/app/src/home/modelView/carro_model_view.dart';
import 'package:carro3d/app/src/home/repository/repository.dart';
import 'package:flutter/material.dart';

enum Status {
  wait,
  error,
  success,
}

class ListCarroModelView extends ChangeNotifier {
  late List<CarroModelView> car;
  late String status;

  Future<void> fetchCars() async {
    status = Status.wait.toString();
    final results = await RepositoryCar().fetcCarro();
    car = results.map((item) => CarroModelView(carro: item)).toList();
    if (car.isNotEmpty) {
      status = Status.success.toString();
    }

    notifyListeners();
  }
}
