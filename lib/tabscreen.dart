import 'package:dalton/Favorite_screen.dart';
import 'package:dalton/drawerview.dart';
import 'package:dalton/main.dart';
import 'package:flutter/material.dart';

class Tabscreen extends StatefulWidget {
  const Tabscreen({Key? key}) : super(key: key);

  @override
  State<Tabscreen> createState() => _TabscreenState();
}

class _TabscreenState extends State<Tabscreen> {
  int indexd=1;
  List pages=[MyHomePage(title: "title"),Favorite(),Favorite()];
  List p=[
    {"page":MyHomePage(title: "title"),"title":"Home"},

    {"page":Favorite(),"title":"Favorite"},
  ];

  int pageselected=0;

  selectpage(int i){
    setState(() {
      pageselected=i;
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: Text(p[pageselected]["title"]),
          ),
      drawer: Drawerview(),
      body: p[pageselected]["page"],

      bottomNavigationBar: BottomNavigationBar(
        onTap:selectpage ,
        backgroundColor: Colors.yellow,
        selectedFontSize: 20,
        unselectedFontSize: 15,
        selectedItemColor: Colors.black,
        currentIndex: pageselected,
        // type: BottomNavigationBarType.shifting,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
              label: "Home",

          ),

          BottomNavigationBarItem(icon: Icon(Icons.favorite),label: "Favorite")

        ],),


        );

  }
}
