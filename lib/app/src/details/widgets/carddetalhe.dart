import 'package:flutter/material.dart';

class CardDetalhe extends StatelessWidget {
  final String name;
  final IconData icons;
  const CardDetalhe({
    Key? key,
    required this.name,
    required this.icons,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      width: 160,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            icons,
            color: Colors.amber,
            size: 34,
          ),
          Text(
            name,
            style: const TextStyle(color: Colors.amber, fontSize: 20),
          )
        ],
      ),
    );
  }
}
