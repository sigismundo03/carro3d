import 'package:carro3d/app/src/core/constante.dart';
import 'package:carro3d/app/src/home/modelView/carro_model_view.dart';
import 'package:flutter/material.dart';

class CardCarro extends StatelessWidget {
  final CarroModelView item;
  const CardCarro({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 24,
          ),
          Expanded(
            child: Card(
              elevation: 5,
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      "/Detalhe",
                      arguments: item,
                    );
                  },
                  child: Hero(
                    tag: item,
                    child: FadeInImage(
                      image: NetworkImage(
                        item.imagemURL,
                      ),
                      placeholder: const AssetImage(placeholder),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Text(
              item.nome,
              style: const TextStyle(fontStyle: FontStyle.normal),
            ),
          ),
          Text(
            "R\$: ${item.preco}",
            style: const TextStyle(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
