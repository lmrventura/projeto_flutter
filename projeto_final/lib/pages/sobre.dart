import 'package:flutter/material.dart';

import '../Widgets/texts.dart';

class Sobre extends StatefulWidget {
  @override
  State<Sobre> createState() => _SobreState();
}

class _SobreState extends State<Sobre> {
  //const Sobre({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text('Sobre'),
        centerTitle: true,
        //to make it transparent: leading
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
            ),
          )
        ],
        backgroundColor: Colors.transparent,
        //elevation: 0, //remove shadow
      ),
      body: ListView(
        children: <Widget>[
          Image.asset(
              "settings/bgimage.png",
            fit: BoxFit.cover,
          ),
          Container(
              child: Container(
                child: TextSobre(),
              ),
          ),
        ],
      ),
    );
  }
}
