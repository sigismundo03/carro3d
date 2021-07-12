import 'package:flutter/material.dart';

class CardCarro extends StatelessWidget {
  const CardCarro({
    Key? key,
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
          Card(
            elevation: 5,
            child: Container(
              padding: const EdgeInsets.all(16),
              height: 180,
              width: 160,
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Image.network(
                "https://cdn.pixabay.com/photo/2015/09/02/12/25/bmw-918408_960_720.jpg",
                fit: BoxFit.fill,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              "BMW",
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
          const Text(
            r"R$:203",
            style: TextStyle(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
