import 'package:flutter/material.dart';
import 'package:projeto_final/pages/new.dart';

import 'package:projeto_final/pages/sobre.dart';
import '../pages/home.dart';
import '../pages/contatos.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) => Drawer(
        child: ListView(
          children: [
            //RETIRAR CONST
            Container(
              child: Stack(
                alignment: const Alignment(0.6, 0.6),
                children: [
                  Image.asset(
                    "settings/carrosselJPEG.jpg",
                    fit: BoxFit.cover,
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    child: CircleAvatar(
                      backgroundImage: AssetImage('settings/coalaJPEG.jpg'),
                      radius: 100,
                    ),
                  ),
                  Container(
                    alignment: Alignment.bottomCenter,
                    decoration: const BoxDecoration(
                      color: Colors.black45,
                    ),
                    child: const Text(
                      'Luiz M',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              title: const Text('Home'),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Home(),
                    ));
              },
            ),
            ListTile(
              title: const Text('Sobre'),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TransparentAppBar(),
                    ));
              },
            ),
            ListTile(
              title: const Text('Contato'),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Contato(),
                    ));
              },
            ),
          ],
        ),
      );
}
