import 'package:flutter/material.dart';
import 'package:projeto_final/classes/stringClass.dart';

class TextSobre extends StatelessWidget {
  const TextSobre({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              Strings.posterDetalhes,
              style: const TextStyle(
                color: Color.fromARGB(255, 177, 209, 179),
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
