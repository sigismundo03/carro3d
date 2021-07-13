import 'package:flutter/material.dart';

class DetalisView extends StatelessWidget {
  final Map<String, dynamic> item;
  const DetalisView({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Hero(
              tag: item,
              child: Container(
                decoration: BoxDecoration(
                  // shape: BoxShape.circle,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Image.network(item["imagemURL"]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
