class CarroModel {
  String nome;
  String km;
  String ano;
  String cumbustivel;
  String preco;
  String imagemURL;
  String imagem3D;

  CarroModel({
    required this.nome,
    required this.km,
    required this.ano,
    required this.cumbustivel,
    required this.preco,
    required this.imagemURL,
    required this.imagem3D,
  });

  factory CarroModel.fromJson(Map<String, dynamic> json) {
    return CarroModel(
        nome: json["nome"],
        km: json["km"],
        ano: json["ano"],
        cumbustivel: json["cumbustivel"],
        preco: json["preco"],
        imagem3D: json["imagem3D"],
        imagemURL: json["imagemURL"]);
  }
}
