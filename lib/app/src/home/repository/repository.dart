import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

import 'package:carro3d/app/src/core/constante.dart';
import 'package:carro3d/app/src/home/model/carro_model.dart';

class RepositoryCar {
  Future<List<CarroModel>> fetcCarro() async {
    final Iterable mydata = json.decode(await getJson());
    return mydata.map((car) => CarroModel.fromJson(car)).toList();
  }

  Future<String> getJson() {
    return rootBundle.loadString(dataJson);
  }
}
