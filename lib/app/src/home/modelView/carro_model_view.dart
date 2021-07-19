import 'package:carro3d/app/src/home/model/carro_model.dart';

class CarroModelView {
  final CarroModel carro;

  CarroModelView({required this.carro});

  String get nome {
    return carro.nome;
  }

  String get km {
    return carro.km;
  }

  String get preco {
    return carro.preco;
  }

  String get ano {
    return carro.ano;
  }

  String get cumbustivel {
    return carro.cumbustivel;
  }

  String get imagem3D {
    return carro.imagem3D;
  }

  String get imagemURL {
    return carro.imagemURL;
  }
}
