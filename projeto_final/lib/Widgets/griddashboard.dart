import 'dart:math';

import 'package:flutter/material.dart';

class GridViewDashboard extends StatelessWidget {
  //const MyWidget({super.key});

  Item item1 = Item(
    title: "TitleA",
    subtitle: "SubTitleA",
    event: "EventA",
    img: "img/notificacao.png",
  );

  Item item2 = Item(
    title: "TitleB",
    subtitle: "SubTitleB",
    event: "EventB",
    img: "img/location.png",
  );

  Item item3 = Item(
    title: "TitleC",
    subtitle: "SubTitleC",
    event: "EventC",
    img: "img/calendario.png",
  );

  Item item4 = Item(
    title: "TitleD",
    subtitle: "SubTitleD",
    event: "EventD",
    img: "img/settings.png",
  );

  Item item5 = Item(
    title: "TitleE",
    subtitle: "SubTitleE",
    event: "EventE",
    img: "img/settings2.png",
  );

  Item item6 = Item(
    title: "TitleF",
    subtitle: "SubTitleF",
    event: "EventF",
    img: "img/info.jpg",
  );

  @override
  Widget build(BuildContext context) {
    List<Item> myList = [item1, item2, item3, item4, item5, item6];
    return Flexible(
      child: Container(
        margin: EdgeInsets.only(top: 180),
        child: GridView.count(
            padding: EdgeInsets.only(left: 16, right: 16),
            childAspectRatio: 1.5, //height container
            crossAxisCount: 2, //number of columns
            mainAxisSpacing: 8, //top e down
            crossAxisSpacing: 18, //side between the columns
            children: myList.map((data) {
              return Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(13),
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(top: 30),
                      child: Image.asset(
                        data.img,
                        width: 42,
                      ),
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    Text(
                      data.title,
                    ),
                    Text(
                      data.subtitle,
                    )
                  ],
                ),
              );
            }).toList()),
      ),
    );
  }
}

class Item {
  String title;
  String subtitle;
  String event;
  String img;
  Item({
    required this.title,
    required this.subtitle,
    required this.event,
    required this.img,
  });
}
