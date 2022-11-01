import 'package:flutter/material.dart';
import 'package:projeto_final/Widgets/my_drawer.dart';
import 'package:projeto_final/pages/sobre.dart';

import '../Widgets/carrossel.dart';
import '../Widgets/griddashboard.dart';
import 'adm.dart';
import 'contatos.dart';

import 'new.dart';

//import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //const Home({super.key});
  TextEditingController searchController = new TextEditingController();

  String search = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff392850),
      appBar: AppBar(
        title: const Center(
          child: Text("My Store"),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Adm(),
                  ));
            },
            icon: Icon(Icons.person),
          )
        ],
      ),
      drawer: const MyDrawer(),
      body: Stack(
        children: <Widget>[
          const Carrossel(),
          GridViewDashboard(),
        ],
      ),
      //bottomNavigationBar: BottomNavigationBar(),
    );
  }
}
