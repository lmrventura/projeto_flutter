import 'package:flutter/material.dart';

import '../Widgets/texts.dart';

class TransparentAppBar extends StatelessWidget {
  const TransparentAppBar({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        extendBodyBehindAppBar: true, //image behind appbar
        appBar: AppBar(
          title: Text('Sobre'),
          centerTitle: true,
          leading: BackButton(),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
            ),
          ],
          backgroundColor: Colors.transparent,
          elevation: 0, //tirar "sombra"
        ),
        body: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: 100),
            ),
            Image.network(
              'https://images.unsplash.com/photo-1667119452852-11c30a51af10?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyMjJ8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
            //Image.asset(
            //"settings/bgimage.png",
            //fit: BoxFit.cover,
            //width: double.infinity,
            //),
            TextSobre(),
          ],
        ),
      );
}
