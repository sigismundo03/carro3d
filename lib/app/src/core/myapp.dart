import 'package:carro3d/app/src/details/view/details_view.dart';
import 'package:carro3d/app/src/home/modelView/listcarromodelview.dart';
import 'package:carro3d/app/src/home/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      // initialRoute: "/",
      home: ChangeNotifierProvider(
        create: (context) => ListCarroModelView(),
        child: const HomeView(),
      ),
      routes: {
        // "/": (context) => const HomeView(),
        "/Detalhe": (context) => const DetalisView(),
      },
    );
  }
}
