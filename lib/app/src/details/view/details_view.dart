import 'package:carro3d/app/src/details/view/teste.dart';
import 'package:carro3d/app/src/details/widgets/carddetalhe.dart';
import 'package:carro3d/app/src/home/modelView/carro_model_view.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_cube/flutter_cube.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DetalisView extends StatelessWidget {
  const DetalisView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CarroModelView item =
        ModalRoute.of(context)!.settings.arguments as CarroModelView;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          item.nome,
          style: const TextStyle(fontSize: 24),
        ),
        elevation: 0,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 2),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Hero(
                  tag: item,
                  child: Container(
                    decoration: BoxDecoration(
                      // shape: BoxShape.circle,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Image.network(item.imagemURL),
                  ),
                ),
                Container(
                  height: 20,
                  margin: const EdgeInsets.only(
                    left: 360,
                  ),
                  child: Tooltip(
                    message: "Modelo 3D",
                    child: IconButton(
                      icon: const Icon(
                        FontAwesomeIcons.eye,
                        color: Colors.white,
                        size: 25,
                      ),
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Teste())),
                      //  showDialog<String>(
                      //   context: context,
                      //   builder: (BuildContext context) => AlertDialog(
                      //     // title: const Text('AlertDialog Title'),
                      //     content: Container(
                      //       width: 200.0,
                      //       height: 200.0,
                      //       child: Cube(

                      //         onSceneCreated: (Scene scene) {
                      //           scene.world.add(Object(
                      //               fileName:
                      //                   "assets/images/Lamborghini .obj"));
                      //         },
                      //       ),
                      //     ),
                      //     // actions: <Widget>[
                      //     //   TextButton(
                      //     //     onPressed: () => Navigator.pop(context, 'Cancel'),
                      //     //     child: const Text('Cancel'),
                      //     //   ),
                      //     //   TextButton(
                      //     //     onPressed: () => Navigator.pop(context, 'OK'),
                      //     //     child: const Text('OK'),
                      //     //   ),
                      //     // ],
                      //   ),
                      // ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            // Container(
            //   margin: const EdgeInsets.only(left: 20),
            //   decoration: BoxDecoration(
            //     // shape: BoxShape.circle,
            //     borderRadius: BorderRadius.circular(16),
            //   ),
            //   child: Text(
            //     item["nome"],
            //     style: const TextStyle(fontSize: 24),
            //   ),
            // ),

            Container(
              height: 200,
              margin: const EdgeInsets.only(top: 20),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CardDetalhe(
                    icons: FontAwesomeIcons.moneyBillAlt,
                    name: "Preço:${item.preco}R\$",
                  ),
                  CardDetalhe(
                    icons: FontAwesomeIcons.calendarWeek,
                    name: "Ano: ${item.ano}",
                  ),
                  CardDetalhe(
                    icons: FontAwesomeIcons.tachometerAlt,
                    name: "${item.km} KM",
                  ),
                  CardDetalhe(
                    icons: FontAwesomeIcons.gasPump,
                    name: "Cumbustivel: ${item.cumbustivel}",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
