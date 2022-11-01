import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Carrossel extends StatelessWidget {
  const Carrossel({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: MediaQuery.of(context).size.width, //width: 200,
      decoration: const BoxDecoration(
        color: Colors.blue,
        //image: DecorationImage(
        //image: AssetImage('images/carrosselJPEG.jpg'),
      ),
      //shape: BoxShape.circle,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(
                  top: 15,
                ),
                child: const Text(
                  "FilantroHub",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 30,
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(29.5),
                ), //color: Colors.white,
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: "Search",
                    icon: Icon(Icons.search),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
